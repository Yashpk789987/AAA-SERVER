var express = require('express');
const path = require('path');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.sendFile(path.join(__dirname+'/client/build/index.html'));
});

router.get('/date' , ( req , res) => {
  res.send(new Date())
})

module.exports = router;
