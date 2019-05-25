var express = require('express');
const path = require('path');
var router = express.Router();
var moment = require('moment-timezone');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.sendFile(path.join(__dirname+'/client/build/index.html'));
});

router.get('/error' , ( req , res ) => {
  res.render('error.ejs')
})

router.get('/date' , ( req , res) => {
  res.send(moment(new Date()).tz("Asia/Kolkata").format("DD-MM-YYYY HH:mm:ss"))
})

router.get('/download' , ( req, res ) => {
  res.render('Download.ejs');
})

module.exports = router;
