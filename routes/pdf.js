var express = require('express');
var crypto = require('crypto');
var mime = require('mime');
var router = express.Router();
var multer = require('multer');

var storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, 'uploads/pdfs/');
  },
  filename: function(req, file, cb) {
    crypto.pseudoRandomBytes(16, function(err, raw) {
      cb(
        null,
        raw.toString('hex') +
          Date.now() +
          '.' +
          mime.getExtension(file.mimetype)
      );
    });
  }
});

var upload = multer({ storage: storage });
var mysql = require('mysql');
var pgsql = require('pg-pool');

var pool_2 = new pgsql(require('../database').pgsql);

router.post('/upload_pdf/p', upload.single('pdf'), (req, res) => {
  try {
    let data = JSON.parse(req.body.SendData);
    let query = `insert into pdf_files(sub_category_id , english_name , hindi_name , filename)
          values(${data.sub_category_id},'${data.english_name}','${data.hindi_name}','${req.file.filename}')`;
    pool_2.query(query, (err, result) => {
      if (err) throw err;
      res.json({ message: 'Uploaded Successfully ...' });
    });
  } catch (error) {
    console.log(error);
  }
});

router.get('/get/:sub_category_id/p', (req, res) => {
  try {
    let query = `select p.* , s.logo from pdf_files as p , sub_category as s where p.sub_category_id = s._id and p.sub_category_id = ${req.params.sub_category_id} `;
    pool_2.query(query, (err, result) => {
      if (err) throw err;
      res.json(result.rows);
    });
  } catch (error) {
    console.log(error);
  }
});

module.exports = router;
