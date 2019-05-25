var express = require('express');
var router = express.Router();
var multer = require('multer');
var upload = multer({ dest: 'uploads/questions/' });
var mysql = require('mysql');
var pgsql = require('pg-pool');
var moment = require('moment-timezone');
var pool_1 = mysql.createPool({ ...require('../database').mysql });
var pool_2 = new pgsql(require('../database').pgsql);

router.post('/create/pg', function(req, res) {
  let data = req.body;
  console.log(data.end_time);
  let query = `insert into test(english_title, hindi_title, test_commence_date, test_commence_time, test_allowed_time_in_seconds, 
    end_time, test_online_no_of_days) values('${data.english_title}', '${
    data.hindi_title
  }', '${data.test_commence_date}',
    '${data.test_commence_time}','${data.test_duration_in_seconds}','${
    data.end_time
  }','') returning * `;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
      throw err;
    }
    res.json({
      message: 'Test Created .. Please Add Questions ..',
      test: result.rows[0]
    });
  });
});

router.post('/add_testQuestion_without_image/pg', upload.any(), (req, res) => {
  let data = JSON.parse(req.body.SendData);
  let question_query = `insert into test_questions(test_id,english_text,hindi_text,correct_option_index)
  values(${data.test_id},'${data.english_text}','${data.hindi_text}',${
    data.correct_option_index
  }) returning * `;
  pool_2.query(question_query, (err, result) => {
    if (err) {
      console.log(err, 'first');
      throw err;
    }
    let option_query = `insert into test_options(test_question_id,english_text,hindi_text) values `;
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

router.post(
  '/add_testQuestion_with_image/pg',
  upload.single('question_image'),
  (req, res) => {
    let data = JSON.parse(req.body.SendData);
    let question_query = `insert into test_questions(test_id,english_text,hindi_text,correct_option_index,pic)
  values(${data.test_id},'${data.english_text}','${data.hindi_text}',${
      data.correct_option_index
    },'${req.file.filename}') returning * `;
    pool_2.query(question_query, (err, result) => {
      if (err) throw err;
      let option_query = `insert into test_options(test_question_id,english_text,hindi_text) values `;
      for (let i = 0; i < data.options.length; i++) {
        option_query += ` (${result.rows[0]._id}, '${
          data.options[i].english_text
        }', '${data.options[i].hindi_text}'), `;
      }
      option_query = option_query.substr(0, option_query.length - 2);
      pool_2.query(option_query, (err, result) => {
        if (err) throw err;
        res.json({ message: 'Question Added Successfully....' });
      });
    });
  }
);

router.get('/fetch_all_test/pg', (req, res) => {
  let query = `select * from test order by _id desc `;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
      throw err;
    }
    res.json(result.rows);
  });
});

router.get('/fetch_test_by_id/:id/pg', (req, res) => {
  let query = `select * from test where _id = ${
    req.params.id
  } ; select count(_id) from test_questions where test_id = ${
    req.params.id
  } group by test_id `;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
      throw err;
    }
    let obj = result[0].rows[0];
    result[1].rows.length === 0
      ? (obj['count'] = 0)
      : (obj['count'] = result[1].rows[0].count);
    res.json(obj);
  });
});

///// TO BE VIEWED LATER ///////

// isOnline = obj => {
//   let allowed_days_in_seconds =
//     parseInt(obj.test_online_no_of_days) * 24 * 3600;
//   let dateTime = obj.test_commence_date + ' ' + obj.test_commence_time;
//   dateTime = moment(dateTime);
//   let currentDateTime = moment(moment(new Date()).tz('Asia/Kolkata'));
//   var diff = currentDateTime.diff(dateTime, 'seconds');
//   if (!(diff < 0 || diff > allowed_days_in_seconds)) {
//     return obj;
//   }
// };

///// TO BE VIEWED LATER ///////

isOnline = obj => {
  let end_date_time = obj.test_commence_date + ' ' + obj.end_time;
  let start_date_Time = obj.test_commence_date + ' ' + obj.test_commence_time;
  start_date_Time = moment(start_date_Time);
  end_date_time = moment(end_date_time);
  let currentDateTime = moment(
    new Date().toLocaleString('en-US', { timeZone: 'Asia/Kolkata' })
  );

  var difference_with_start_time = currentDateTime.diff(
    start_date_Time,
    'seconds'
  );

  var range = end_date_time.diff(start_date_Time, 'seconds');
  console.log('Current Date Time', currentDateTime);
  console.log('Start Time :', start_date_Time);
  console.log('Difference ', difference_with_start_time);
  if (!(difference_with_start_time < 0 || difference_with_start_time > range)) {
    return obj;
  }
};

isOffline = obj => {
  let end_date_time = obj.test_commence_date + ' ' + obj.end_time;
  let start_date_Time = obj.test_commence_date + ' ' + obj.test_commence_time;
  start_date_Time = moment(start_date_Time);
  end_date_time = moment(end_date_time);
  let currentDateTime = moment(
    new Date().toLocaleString('en-US', { timeZone: 'Asia/Kolkata' })
  );

  var difference_with_start_time = currentDateTime.diff(
    start_date_Time,
    'seconds'
  );

  var range = end_date_time.diff(start_date_Time, 'seconds');
  console.log('Current Date Time', currentDateTime);
  console.log('Start Time :', start_date_Time);
  console.log('Difference ', difference_with_start_time);
  if (difference_with_start_time > range) {
    return obj;
  }
};

router.get('/fetch_offline_tests/pg', (req, res) => {
  let query = `select * from test order by _id desc limit 50 `;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
    }
    const filterResult = result.rows.filter(item => {
      return isOffline(item);
    });
    res.json(filterResult);
  });
});

router.get('/fetch_online_tests/:student_id/pg', (req, res) => {
  let query = `select * from test where _id not in(select test_id from result where student_id = ${
    req.params.student_id
  }) order by _id desc`;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
      console.log(result);
    }
    const filterResult = result.rows.filter(item => {
      return isOnline(item);
    });
    res.json(filterResult);
  });
});

router.get('/fetch_test_questions_by_test_id/:test_id/pg', (req, res) => {
  let query = `SELECT o._id as option_id , o.test_question_id , o.english_text as option_english_text , o.hindi_text as option_hindi_text  , q.* FROM test_options o , test_questions q where o.test_question_id = q._id and q.test_id = ${
    req.params.test_id
  } order by  test_question_id `;
  pool_2.query(query, (err, result) => {
    if (err) console.log(err);
    res.json(result.rows);
  });
});

router.post('/submit_test/pg', (req, res) => {
  let data = req.body;
  let query = `insert into result(test_id,student_id,result,time_taken)
  values(${parseInt(data.test_id)},${parseInt(data.student_id)},'${
    data.result
  }','${data.time_taken}')`;
  pool_2.query(query, (err, result) => {
    if (err) {
      console.log(err);
    }
    res.json({ code: 'success' });
  });
});

module.exports = router;
