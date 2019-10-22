var express = require('express');
var crypto = require('crypto');
var mime = require('mime');
var router = express.Router();
var multer = require('multer');

var mysql = require('mysql');
var pgsql = require('pg-pool');

var pool_1 = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql);

var storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, 'uploads/ads/');
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
  },
  onError: function(err, next) {
    console.log('error', err);
  }
});

var upload = multer({ storage: storage });

router.post('/upload_ad_image/p', upload.single('image'), (req, res) => {
  try {
    let data = JSON.parse(req.body.SendData);
    console.log(req.file.filename);
    let query = `insert into ads(image_url, category)
            values('${req.file.filename}','${data.category}')`;
    pool_2.query(query, (err, result) => {
      if (err) throw err;
      res.json({ code: 'success' });
    });
  } catch (error) {
    console.log(error);
  }
});

router.get('/load_all_ads/p', function(req, res) {
  let query = `select * from ads`;
  pool_2.query(query, function(err, result) {
    if (err) throw err;
    res.json(result.rows);
  });
});

module.exports = router;
