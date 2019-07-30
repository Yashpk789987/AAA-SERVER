var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');
var pool_2 = new pgsql(require('../database').pgsql);

router.post('/submit/p', (req, res) => {
  const { name, mobile_no, address } = req.body;
  let query = `insert into enquiry(name, mobile_no, address) values('${name}','${mobile_no}','${address}')`;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json({ code: 'enquiry_submit_success' });
  });
});

router.get('/show_all/p', (req, res) => {
  let query = 'select * from enquiry';
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json(result.rows);
  });
});

module.exports = router;
