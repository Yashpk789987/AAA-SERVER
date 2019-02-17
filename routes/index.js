var express = require('express');
const path = require('path');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.sendfile(path.join(__dirname = 'public/build/index.html'))
});

module.exports = router;
