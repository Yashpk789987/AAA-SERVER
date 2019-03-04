var express = require('express');
var router = express.Router();
var multer  = require('multer')
var upload = multer({ dest: 'uploads/questions/' })
var mysql = require('mysql');
var pgsql = require('pg-pool')
var moment = require('moment-timezone');
var pool_1  = mysql.createPool({...require('../database').mysql});
var pool_2 = new pgsql(require('../database').pgsql)

router.post('/create/pg', function(req, res) {
  let data = req.body
  let query = `insert into test(english_title, hindi_title, test_commence_date, test_commence_time, test_allowed_time_in_seconds, 
    test_online_no_of_days) values('${data.english_title}', '${data.hindi_title}', '${data.test_commence_date}',
    '${data.test_commence_time}','${data.test_duration_in_seconds}','${data.test_online_no_of_days}') returning * `
  pool_2.query(query, (err , result) => {
      if(err) { console.log(err); throw err}
      res.json({ message : "Test Created .. Please Add Questions .." , test : result.rows[0]})
  })
});


router.post('/add_testQuestion_without_image/pg' , upload.any() , (req , res) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into test_questions(test_id,english_text,hindi_text,correct_option_index)
  values(${data.test_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index}) returning * `
  pool_2.query(question_query , (err , result) => {
    if(err) {console.log(err, "first") ; throw err }
    let option_query = `insert into test_options(test_question_id,english_text,hindi_text) values `
    for( let i = 0 ; i < data.options.length ; i++ ){
      option_query += ` (${result.rows[0]._id}, '${data.options[i].english_text}', '${data.options[i].hindi_text}'), `
    }
    
    option_query = option_query.substr(0, option_query.length-2)
    pool_2.query(option_query , (err , result) => {
       if(err) {console.log(err, "second") ; throw err }
       res.json({ message : "Question Added Successfully...."})  
    })
  })
})


router.post('/add_testQuestion_with_image/pg' , upload.single('question_image') , ( req , res ) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into test_questions(test_id,english_text,hindi_text,correct_option_index,pic)
  values(${data.test_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index},'${req.file.filename}' returning * `
  pool_2.query(question_query , (err , result) => {
    if(err) throw err 
    let option_query = `insert into test_options(test_question_id,english_text,hindi_text) values `
    for( let i = 0 ; i < data.options.length ; i++ ){
      option_query += ` (${result.rows[0]._id}, '${data.options[i].english_text}', '${data.options[i].hindi_text}'), `
    }
    option_query = option_query.substr(0, option_query.length-2)
    pool_2.query(option_query , (err , result) => {
       if(err) throw err
       res.json({ message : "Question Added Successfully...."})  
    })
  })
})

router.get('/fetch_all_test/pg' , ( req , res ) => {
  let query = `select * from test order by _id desc `
  pool_2.query(query , ( err , result ) => {
    if(err) { console.log(err) ; throw err}
    res.json(result.rows)
  })
})

router.get('/fetch_test_by_id/:id/pg' , ( req , res ) => {
  let query = `select * from test where _id = ${req.params.id} ; select count(_id) from test_questions where test_id = ${req.params.id} group by test_id `
  pool_2.query(query , ( err , result ) => {
    if(err) { console.log(err) ; throw err}
    let obj = result[0].rows[0]
    result[1].rows.length === 0 ? obj["count"] = 0 : obj["count"] = result[1].rows[0].count
    res.json(obj)
  })
})


isOnline = (obj) => {
  let allowed_days_in_seconds  = parseInt(obj.test_online_no_of_days) * 24 * 3600
  let dateTime = obj.test_commence_date + ' ' + obj.test_commence_time
  dateTime = moment(dateTime);
  let currentDateTime = moment(moment(new Date()).tz("Asia/Kolkata"));
  var diff = currentDateTime.diff(dateTime,'seconds');
  if(!((diff < 0) || (diff > allowed_days_in_seconds))){
    return obj
  } 
}


router.get('/fetch_online_tests/pg' , ( req , res ) => {
  let query = `select * from test order by _id desc `
  pool_2.query(query, ( err , result ) => {
    if(err) { console.log(err)}
    const filterResult = result.rows.filter((item) => {return(isOnline(item))})
    
    console.log(filterResult.length);
    res.json(filterResult);
    
  })
})



module.exports = router





