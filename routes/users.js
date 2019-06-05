var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'root',
  password: '123',
  database: 'aaa_academy'
});

/* GET users listing. */
router.get('/', function(req, res, next) {
  pool.query('select', (err, result) => {
    if (err) throw err;
    else res.json({ result });
  });
  res.send('Error');
});

router.get('/pg', function(req, res, next) {
  res.send('respond with a resource pgsql ');
});

router.get('/students', (req, res) => {
  pool.query(`select * from student`, (err, result) => {
    if (err) throw err;
    res.json(result);
  });
});

router.get('/FB_LIKE', (req, res) => {
  res.render('fb.ejs');
});

module.exports = router;
