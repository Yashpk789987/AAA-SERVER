var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');
var mysql = require('mysql');
var pool_1 = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql);

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/student_login/pg', function(req, res) {
  try {
    let data = req.body;
    if (data.login_type === 'fb') {
      let query = `insert into student(fb_id,name,fb_pic,login_type)
      values('${data.facebook_id}','${data.name}','${
        data.fb_pic_uri
      }','fb_login') 
      on conflict (fb_id) do nothing  returning * `;
      pool_2.query(query, (err, result) => {
        if (err) {
          console.log(err);
          throw err;
        }
        if (result.rowCount === 0) {
          pool_2.query(
            `select * from student where fb_id = '${data.facebook_id}'`,
            (err, result) => {
              if (err) {
                console.log(err);
              }
              res.json(result.rows[0]);
            }
          );
        } else {
          res.json(result.rows[0]);
        }
      });
    } else if (data.login_type === 'custom_login') {
      let query = `select * from student where email_id = '${
        data.email
      }' and password = '${data.password}' `;
      pool_2.query(query, (err, result) => {
        if (err) {
          console.log(err);
        }
        if (result.rows.length === 0) {
          res.json({ code: 'failed', message: ' Wrong Email / Password' });
        } else {
          res.json({ student: result.rows[0], code: 'success' });
        }
      });
    } else if (data.login_type === 'google') {
      let query = `insert into student(google_id,name,google_pic,login_type,email_id)
    values('${data.google_id}','${data.name}','${
        data.google_pic_uri
      }','google_login','${data.email}') 
    on conflict (google_id) do nothing  returning * `;
      pool_2.query(query, (err, result) => {
        if (err) {
          console.log(err);
          throw err;
        }
        if (result.rowCount === 0) {
          pool_2.query(
            `select * from student where google_id = '${data.google_id}'`,
            (err, result) => {
              if (err) {
                console.log(err);
              }
              res.json(result.rows[0]);
            }
          );
        } else {
          res.json(result.rows[0]);
        }
      });
    }
  } catch (error) {
    console.log(error);
  }
});

router.get('/image', (req, res) => {
  res.send(
    `<image src = 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=179097639724111&height=150&width=200&ext=1554664453&hash=AeRBdLb4_EEHwP6v' >`
  );
});

router.post('/insert_token/pg', (req, res) => {
  let data = req.body;
  console.log(data);
  pool_2.query(
    `update student set push_notification_token = '${data.token}' where _id = ${
      data.student_id
    }`,
    (err, result) => {
      try {
        res.json({ 'token_updated ': true });
      } catch (error) {
        console.log(error);
        res.json({ token_updated: false });
      }
    }
  );
});

module.exports = router;
