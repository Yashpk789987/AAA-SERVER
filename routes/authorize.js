var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');
var pool_2 = new pgsql(require('../database').pgsql);

router.post('/authorize/pg', (req, res) => {
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

module.exports = router;
