var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');
var pool_2 = new pgsql(require('../database').pgsql);

router.post('/authorize/p', (req, res) => {
  try {
    const { test_code, password } = req.body;
    let query = `select * from authorize where code = '${test_code}' and password = '${password}'`;
    pool_2.query(query, (err, result) => {
      if (result.rows.length === 0) {
        res.json({ authenticated: false });
      } else {
        res.json({ authenticated: true });
      }
    });
  } catch (error) {
    console.log(error);
  }
});

router.get('/get/p', (req, res) => {
  let query = 'select * from authorize ';
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json(result.rows[0]);
  });
});

router.post('/update/p', (req, res) => {
  let data = req.body;
  let query = `update authorize set code = '${data.code}' , password = '${
    data.password
  }' `;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json({ code: 'success' });
  });
});

module.exports = router;
