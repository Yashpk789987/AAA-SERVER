var express = require('express');
var router = express.Router();
var multer  = require('multer')
var upload = multer({ dest: 'uploads/questions/' })
var mysql = require('mysql');
var pgsql = require('pg-pool')

var pool_1  = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql)

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});




router.post('/add_without_image' , upload.any() , (req , res) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index}) returning *  `
  pool_1.query(question_query , (err , result) => {
    if(err) throw err 
    let option_query = `insert into options(question_id,english_text,hindi_text) values `
    for( let i = 0 ; i < data.options.length ; i++ ){
      option_query += ` (${result.insertId}, '${data.options[i].english_text}', '${data.options[i].hindi_text}'), `
    }
    
    option_query = option_query.substr(0, option_query.length-2)
    pool_1.query(option_query , (err , result) => {
       if(err) throw err
       res.json({ message : "Question Added Successfully...."})  
    })
  })
})

router.post('/add_without_image/pg' , upload.any() , (req , res) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index}) returning * `
  pool_2.query(question_query , (err , result) => {
    if(err) {console.log(err, "first") ; throw err }
    let option_query = `insert into options(question_id,english_text,hindi_text) values `
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


router.post('/add_with_image' , upload.single('question_image') , ( req , res) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,pic)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index},'${req.file.filename}')`
  pool_1.query(question_query , (err , result) => {
    if(err) throw err 
    let option_query = `insert into options(question_id,english_text,hindi_text) values `
    for( let i = 0 ; i < data.options.length ; i++ ){
      option_query += ` (${result.insertId}, '${data.options[i].english_text}', '${data.options[i].hindi_text}'), `
    }
    
    option_query = option_query.substr(0, option_query.length-2)
    pool_1.query(option_query , (err , result) => {
       if(err) throw err
       res.json({ message : "Question Added Successfully...."})  
    })
  })
})

router.post('/add_with_image/pg' , upload.single('question_image') , ( req , res ) => {
  let data = JSON.parse(req.body.SendData)
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,pic)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${data.correct_option_index},'${req.file.filename}') returning * `
  pool_2.query(question_query , (err , result) => {
    if(err) throw err 
    console.log(result.rows, "hello...")
    let option_query = `insert into options(question_id,english_text,hindi_text) values `
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


module.exports = router;
