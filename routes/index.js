var express = require('express');
const path = require('path');
var router = express.Router();
var moment = require('moment-timezone');
const { Storage } = require('@google-cloud/storage');
const gc = new Storage({
  keyFilename: path.join(__dirname + '../AAA ACADEMY-42cdcef48de7.json'),
  projectId: 'aaa-academy-233404'
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.sendFile(path.join(__dirname + '/client/build/index.html'));
});

router.get('/error', (req, res) => {
  res.render('error.ejs');
});

router.post('/upload_on_gcd', (req, res) => {
  gc.getBuckets.then(x => console.log(x)).catch(err => console.log(err));
  res.end();
});

router.get('/date', (req, res) => {
  res.send(
    moment(new Date())
      .tz('Asia/Kolkata')
      .format('DD-MM-YYYY HH:mm:ss')
  );
});

router.get('/download', (req, res) => {
  res.render('Download.ejs');
});

module.exports = router;
