var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool')
var mysql = require('mysql');
var pool_1  = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql)

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/student_login/pg', function(req, res) {
  let data = req.body
  if(data.login_type === 'fb'){
      let query = `insert into student(fb_id,name,fb_pic)
      values('${data.facebook_id}','${data.name}','${data.fb_pic_uri}') 
      on conflict (fb_id) do nothing  returning * `
      pool_2.query(query, (err , result) => {
          if(err) { console.log(err) ; throw err}
          if(result.rowCount === 0){
              pool_2.query(`select * from student where fb_id = '${data.facebook_id}'`, (err , result) => {
                  if(err){console.log(err)}
                  res.json(result.rows[0])
              })
          }else{
              res.json(result.rows[0])
          }
      })
  } else if(data.login_type === 'custom_login'){
      let query = `select * from student where email_id = '${data.email}' and password = '${data.password}' `
      pool_2.query(query , ( err , result) => {
        if(err){
            console.log(err);
        }
        if(result.rows.length === 0){
            res.json({ code : 'failed' , message : " Wrong Email / Password" })
        }else{
            res.json({student : result.rows[0] , code : 'success'})
        }
      })
  }
});


module.exports = router;

