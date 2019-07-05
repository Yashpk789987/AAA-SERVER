var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var pgsql = require('pg-pool');
var multer = require('multer');
var upload = multer({ dest: 'uploads/sub_category/' });
var pool_1 = mysql.createPool(require('../database').mysql);
var pool_2 = new pgsql(require('../database').pgsql);

router.post('/add_category', (req, res) => {
  pool_1.query(
    `insert into category(english_name, hindi_name) values('${
      req.body.english_name
    }', '${req.body.hindi_name}')`,
    (err, result) => {
      if (err) throw err;
      res.json({ message: 'Successfully Added ....' });
    }
  );
});

router.post('/add_category/pg', (req, res) => {
  pool_2.query(
    `insert into category(english_name, hindi_name) values('${
      req.body.english_name
    }', '${req.body.hindi_name}')`,
    (err, result) => {
      if (err) throw err;
      res.json({ message: 'Successfully Added ....' });
    }
  );
});

router.post(
  '/add_sub_category',
  upload.single('sub_category_image'),
  (req, res) => {
    let data = JSON.parse(req.body.SendData);
    let query = `insert into sub_category(english_name, hindi_name, category_id , logo) values('${
      data.english_name
    }', '${data.hindi_name}'
  , ${data.category_id} , '${req.file.filename}')`;
    pool_1.query(query, (err, result) => {
      if (err) throw err;
      res.json({ message: 'Successfully Added ....' });
    });
  }
);

router.post(
  '/add_sub_category/pg',
  upload.single('sub_category_image'),
  (req, res) => {
    let data = JSON.parse(req.body.SendData);
    let query = `insert into sub_category(english_name, hindi_name, category_id , logo) values('${
      data.english_name
    }', '${data.hindi_name}'
  , ${data.category_id} , '${req.file.filename}')`;
    pool_2.query(query, (err, result) => {
      if (err) throw err;
      res.json({ message: 'Successfully Added ....' });
    });
  }
);

router.get('/fetch_all_categories', (req, res) => {
  pool_1.query(`select * from category`, (err, result) => {
    if (err) throw err;
    res.json(result);
  });
});

router.get('/fetch_all_categories/pg', (req, res) => {
  pool_2.query(`select * from category`, (err, result) => {
    if (err) throw err;
    res.json(result.rows);
  });
});

router.get('/fetch_all_sub_categories', (req, res) => {
  pool_1.query(`select * from sub_category`, (err, result) => {
    if (err) throw err;
    res.json(result);
  });
});

router.get('/fetch_all_sub_categories/pg', (req, res) => {
  pool_2.query(
    `select * from sub_category order by english_name `,
    (err, result) => {
      if (err) throw err;
      res.json(result.rows);
    }
  );
});

router.get('/sub_categories/:category_id', (req, res) => {
  pool_1.query(
    `select * from sub_category where category_id = ${req.params.category_id}`,
    (err, result) => {
      if (err) throw err;
      res.json(result);
    }
  );
});

router.get('/sub_categories/:category_id/pg', (req, res) => {
  pool_2.query(
    `select * from sub_category where category_id = ${req.params.category_id}`,
    (err, result) => {
      if (err) throw err;
      res.json(result.rows);
    }
  );
});

router.get('/fetch_sub_category_by_id/:sub_category_id/pg', (req, res) => {
  pool_2.query(
    `select * from sub_category where _id = ${req.params.sub_category_id}`,
    (err, result) => {
      if (err) {
        console.log(err);
        throw err;
      }
      res.json(result.rows[0]);
    }
  );
});

router.post('/update_sub_category_data/pg', (req, res) => {
  let data = req.body;
  let query = ` update sub_category set english_name = '${
    data.english_name
  }' , hindi_name = '${data.hindi_name}' , category_id = ${data.category_id} 
  where _id = ${parseInt(data._id)}`;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
      throw err;
    }
    res.json({ message: 'Updated Successfully .....' });
  });
});

router.post(
  '/update_sub_category_image/pg',
  upload.single('logo'),
  (req, res) => {
    let data = req.body;
    let query = ` update sub_category set logo = '${
      req.file.filename
    }' where _id = ${parseInt(data._id)}`;
    pool_2.query(query, (err, result) => {
      if (err) {
        console.log(err);
        throw err;
      }
      res.json({
        message: 'Updated Successfully .....',
        image_url: req.file.filename
      });
    });
  }
);

module.exports = router;
