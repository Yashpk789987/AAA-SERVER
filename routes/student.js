var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');

var pool_2 = new pgsql(require('../database').pgsql);
var moment = require('moment-timezone');
var pgp = require('pg-promise')({ noWarnings: true });
var db = pgp(require('../database').pgsql);

/* GET users listing. */

router.post('/student_login/p', function(req, res) {
  try {
    let data = req.body;
    if (data.login_type === 'fb') {
      let query = `insert into student(fb_id,name,fb_pic,login_type)
      values('${data.facebook_id}','${data.name}','${data.fb_pic_uri}','fb_login') 
      on conflict (fb_id) do update set fb_pic = '${data.fb_pic_uri}'  returning * `;
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
      let query = `select * from student where email_id = '${data.email}' and password = '${data.password}' `;
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
    values('${data.google_id}','${data.name}','${data.google_pic_uri}','google_login','${data.email}') 
    on conflict (google_id) do update set google_pic = '${data.google_pic_uri}'    returning * `;
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

router.get('/show_all/p', (req, res) => {
  let query = `select _id , row_number() over (order by _id ) as sno , name , email_id , login_type from student order by _id `;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json(result.rows);
  });
});

router.get('/show_by_id/:id/p', (req, res) => {
  let query = `select * from student where _id = ${req.params.id}`;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json(result.rows[0]);
  });
});

router.post('/update_permission/p', (req, res) => {
  const data = req.body;
  let query = `update student set pdf_allowed = '${data.pdf_allowed}', online_test_allowed = '${data.online_test_allowed}', offline_test_allowed = ${data.offline_test_allowed} 
  where _id = ${data._id}`;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json({ code: 'success' });
  });
});

function filter_payment_status(payment_object) {
  let currentDate = moment(
    new Date().toLocaleString('en-US', { timeZone: 'Asia/Kolkata' })
  );

  let payment_date = moment(payment_object.payment_date, 'DD/MM/YYYY');
  let difference = parseInt(
    moment.duration(currentDate.diff(payment_date)).asDays()
  );
  let allowed_duration = 0;
  switch (parseInt(payment_object.payment_type)) {
    case 1:
      allowed_duration = 30 * 1;
      break;
    case 2:
      allowed_duration = 30 * 4;
      break;
    case 3:
      allowed_duration = 30 * 6;
      break;
  }
  return !(difference > allowed_duration);
}

router.get('/update_payment_status/p', function(req, res) {
  let query1 = `select student_id,_id,payment_date,amount,payment_type from payments`;
  pool_2.query(query1, function(err, result) {
    if (err) throw err;
    let payments = result.rows;
    let r = null;
    let str = '';
    for (let i = 0; i < payments.length; i++) {
      r = filter_payment_status(payments[i]);
      if (r) {
        str += `${parseInt(payments[i].student_id)},`;
      }
    }
    str = str.substring(0, str.length - 1);
    let query2 = `update student set pdf_allowed = 'true' , online_test_allowed = 'true' , offline_test_allowed = 'true' , payment_status = 'true' where _id in (${str})`;
    let query3 = `update student set pdf_allowed = 'true' , online_test_allowed = 'false' , offline_test_allowed = 'false' , payment_status = 'false' where _id not in (${str})`;
    db.tx(t => {
      return t.batch([t.none(query2), t.none(query3)]);
    })
      .then(data => {
        res.json({ code: 'success' });
      })
      .catch(error => {
        console.log(error);
      });
  });
});

module.exports = router;
