var express = require('express');
var router = express.Router();

// const { Storage } = require('@google-cloud/storage');
// const gc = new Storage({
//   keyFilename: path.join(__dirname + '../AAA ACADEMY-42cdcef48de7.json'),
//   projectId: 'aaa-academy-233404'
// });

/* GET home page. */
router.get('/', (req, res) => {
  res.end();
});

router.get('/error', (req, res) => {
  res.render('error.ejs');
});

// router.post('/upload_on_gcd', (req, res) => {
//   gc.getBuckets.then(x => console.log(x)).catch(err => console.log(err));
//   res.end();
// });

router.get('/download', (req, res) => {
  res.redirect('https://play.google.com/store/apps/details?id=com.yashpk2128');
  //res.render('Download.ejs');
});

module.exports = router;
