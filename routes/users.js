var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
  res.send('Responded With Resource ..');
});

module.exports = router;
