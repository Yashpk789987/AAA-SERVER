var express = require('express');
var router = express.Router();
var multer = require('multer');
var upload = multer({ dest: 'uploads/questions/' });
var mysql = require('mysql');
var pgsql = require('pg-pool');
var gm = require('gm');
var pool_1 = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql);

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/add_without_image', upload.any(), (req, res) => {
  let data = JSON.parse(req.body.SendData);
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,type)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${
    data.correct_option_index
  }, '${data.type}') returning *  `;
  pool_1.query(question_query, (err, result) => {
    if (err) throw err;
    let option_query = `insert into options(question_id,english_text,hindi_text) values `;
    for (let i = 0; i < data.options.length; i++) {
      option_query += ` (${result.insertId}, '${
        data.options[i].english_text
      }', '${data.options[i].hindi_text}'), `;
    }

    option_query = option_query.substr(0, option_query.length - 2);
    pool_1.query(option_query, (err, result) => {
      if (err) throw err;
      res.json({ message: 'Question Added Successfully....' });
    });
  });
});

router.post('/add_without_image/pg', upload.any(), (req, res) => {
  let data = JSON.parse(req.body.SendData);
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,type)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${
    data.correct_option_index
  },'${data.type}') returning * `;
  pool_2.query(question_query, (err, result) => {
    if (err) {
      console.log(err, 'first');
      throw err;
    }
    let option_query = `insert into options(question_id,english_text,hindi_text) values `;
    for (let i = 0; i < data.options.length; i++) {
      option_query += ` (${result.rows[0]._id}, '${
        data.options[i].english_text
      }', '${data.options[i].hindi_text}'), `;
    }

    option_query = option_query.substr(0, option_query.length - 2);
    pool_2.query(option_query, (err, result) => {
      if (err) {
        console.log(err, 'second');
        throw err;
      }
      res.json({ message: 'Question Added Successfully....' });
    });
  });
});

router.post('/add_with_image', upload.single('question_image'), (req, res) => {
  let data = JSON.parse(req.body.SendData);
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,pic,type)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${
    data.correct_option_index
  },'${req.file.filename}','${data.type}')`;
  pool_1.query(question_query, (err, result) => {
    if (err) throw err;
    let option_query = `insert into options(question_id,english_text,hindi_text) values `;
    for (let i = 0; i < data.options.length; i++) {
      option_query += ` (${result.insertId}, '${
        data.options[i].english_text
      }', '${data.options[i].hindi_text}'), `;
    }

    option_query = option_query.substr(0, option_query.length - 2);
    pool_1.query(option_query, (err, result) => {
      if (err) throw err;

      res.json({ message: 'Question Added Successfully....' });
    });
  });
});

router.post(
  '/add_with_image/pg',
  upload.single('question_image'),
  (req, res) => {
    let data = JSON.parse(req.body.SendData);
    let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,pic,type)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${
      data.correct_option_index
    },'${req.file.filename}','${data.type}') returning * `;
    pool_2.query(question_query, (err, result) => {
      if (err) throw err;
      let option_query = `insert into options(question_id,english_text,hindi_text) values `;
      for (let i = 0; i < data.options.length; i++) {
        option_query += ` (${result.rows[0]._id}, '${
          data.options[i].english_text
        }', '${data.options[i].hindi_text}'), `;
      }
      option_query = option_query.substr(0, option_query.length - 2);
      pool_2.query(option_query, (err, result) => {
        if (err) throw err;
        //gm(`../uploads/questions/${req.file.filename}`).resize(900, 350);
        res.json({ message: 'Question Added Successfully....' });
      });
    });
  }
);

router.get(
  '/fetch_questions_by_sub_category_id/:sub_category_id/pg',
  (req, res) => {
    let query = `SELECT o._id as option_id , o.question_id , o.english_text as option_english_text , o.hindi_text as option_hindi_text  , q.* FROM options o , questions q where o.question_id = q._id and q.sub_category_id = ${
      req.params.sub_category_id
    } order by type , question_id `;
    query += ` ; select count(type) , type from questions    where sub_category_id = ${
      req.params.sub_category_id
    } group by type order by type  `;
    pool_2.query(query, (err, result) => {
      if (err) console.log(err);
      res.json({ questions: result[0].rows, types: result[1].rows });
    });
  }
);

router.get(
  '/fetch_questions_by_sub_category_id/:sub_category_id',
  (req, res) => {
    let query = `SELECT o.* , q.* FROM options o , questions q where o.question_id = q._id and q.sub_category_id = ${
      req.params.sub_category_id
    } order by q.type`;
    pool_1.query(query, (err, result) => {
      if (err) throw err;
      res.json(result);
    });
  }
);

router.get('/test', (req, res) => {
  let data = {
    english_text:
      'When a plot is sold for Rs. 18,700, the owner loses 15%. At what price must that plot be sold in order to gain 15%?',
    hindi_text: '',
    options: [
      { english_text: 'Rs. 21,000', hindi_text: '', question_id: '' },
      { english_text: 'Rs. 22,500', hindi_text: '', question_id: '' },
      { english_text: 'Rs. 25,300', hindi_text: '', question_id: '' },
      { english_text: 'Rs. 25,800', hindi_text: '', question_id: '' }
    ],
    correct_option_index: '3',
    sub_category_id: '7',
    type: '3'
  };
  let question_query = `insert into questions(sub_category_id,english_text,hindi_text,correct_option_index,type)
  values(${data.sub_category_id},'${data.english_text}','${data.hindi_text}',${
    data.correct_option_index
  },'${data.type}') returning * `;
  pool_2.query(question_query, (err, result) => {
    if (err) {
      console.log(err, 'first');
      throw err;
    }
    let option_query = `insert into options(question_id,english_text,hindi_text) values `;
    for (let i = 0; i < data.options.length; i++) {
      option_query += ` (${result.rows[0]._id}, '${
        data.options[i].english_text
      }', '${data.options[i].hindi_text}'), `;
    }

    option_query = option_query.substr(0, option_query.length - 2);
    pool_2.query(option_query, (err, result) => {
      if (err) {
        console.log(err, 'second');
        throw err;
      }
      res.json({ message: 'Question Added Successfully....' });
    });
  });
});

module.exports = router;
