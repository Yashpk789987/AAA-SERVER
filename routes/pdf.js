var express = require('express');
var router = express.Router();
var multer  = require('multer')
var upload = multer({ dest: 'uploads/pdfs/' })
var mysql = require('mysql');
var pgsql = require('pg-pool')

var pool_1  = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql)

router.post('/upload_pdf' , upload.single('pdf') , ( req , res ) => {
   let data = JSON.parse(req.body.SendData)
   let query = `insert into pdf_files(sub_category_id , english_name , hindi_name , filename)
   values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}','${req.file.filename}')`
   pool_1.query(query, (err,result) => {
       if(err) throw err
       res.json({ message : "Uploaded Successfully ..."})
   })
})

router.post('/upload_pdf/pg' , upload.single('pdf') , ( req , res ) => {
    let data = JSON.parse(req.body.SendData)
    let query = `insert into pdf_files(sub_category_id , english_name , hindi_name , filename)
    values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}','${req.file.filename}')`
    pool_1.query(query, (err,result) => {
        if(err) throw err
        res.json({ message : "Uploaded Successfully ..."})
    })
 })
 

module.exports = router