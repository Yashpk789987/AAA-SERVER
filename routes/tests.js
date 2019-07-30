var express = require('express');
var router = express.Router();
var multer = require('multer');
var upload = multer({ dest: 'uploads/questions/' });
var mysql = require('mysql');
var pgsql = require('pg-pool');
var moment = require('moment-timezone');

var pool_2 = new pgsql(require('../database').pgsql);
var pgp = require('pg-promise')(/*options*/);
var db = pgp(require('../database').pgsql);

router.post('/create/p', function(req, res) {
  try {
    let data = req.body;
    let query = `insert into test(english_title, hindi_title, test_commence_date, test_commence_time, test_allowed_time_in_seconds, 
    end_time, test_online_no_of_days, set_password, shuffle_required) values('${
      data.english_title
    }', '${data.hindi_title}', '${data.test_commence_date}',
    '${data.test_commence_time}','${data.test_duration_in_seconds}','${
      data.end_time
    }','','${data.set_password}','${data.shuffle_required}') returning * `;
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
  } catch (error) {
    console.log(error);
  }
});

router.post('/add_testQuestion_without_image/p', upload.any(), (req, res) => {
  try {
    let data = JSON.parse(req.body.SendData);
    let question_query = `insert into test_questions(test_id,english_text,hindi_text,correct_option_index)
  values(${data.test_id},'${data.english_text}','${data.hindi_text}',${
      data.correct_option_index
    }) returning * `;
    pool_2.query(question_query, (err, result) => {
      if (err) {
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
  } catch (error) {
    console.log(error);
  }
});

router.post(
  '/add_testQuestion_with_image/p',
  upload.single('question_image'),
  (req, res) => {
    try {
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
    } catch (error) {
      console.log(error);
    }
  }
);

router.get('/fetch_all_test/p', (req, res) => {
  try {
    let query = `select * from test order by _id desc `;
    pool_2.query(query, (err, result) => {
      if (err) {
        console.log(err);
        throw err;
      }
      res.json(result.rows);
    });
  } catch (error) {}
});

router.get('/fetch_test_by_id/:id/p', (req, res) => {
  try {
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
  } catch (error) {}
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
  try {
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
    if (
      !(difference_with_start_time < 0 || difference_with_start_time > range)
    ) {
      return obj;
    }
  } catch (error) {
    console.log(error);
  }
};

isOffline = obj => {
  try {
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
    if (difference_with_start_time > range) {
      return obj;
    }
  } catch (err) {
    console.log(err);
  }
};

router.get('/fetch_offline_tests/:student_id/p', (req, res) => {
  let query1 = `select offline_test_allowed from student where _id = ${
    req.params.student_id
  }`;
  let query2 = null;
  pool_2.query(query1, (err, result) => {
    if (err) throw err;

    if (result.rows[0].offline_test_allowed === 'true') {
      query2 = `select * from test order by _id desc  limit 50 `;
    } else {
      query2 = `select * from test where set_as_demo_test = 'true' `;
    }
    pool_2.query(query2, (err, result) => {
      if (err) {
        console.log(err);
      }
      const filterResult = result.rows.filter(item => {
        return isOffline(item);
      });
      res.json(filterResult);
    });
  });
});

router.get('/fetch_online_tests/:student_id/p', (req, res) => {
  let query1 = `select online_test_allowed from student where _id = ${
    req.params.student_id
  }`;
  let query2 = null;
  pool_2.query(query1, (err, result) => {
    if (err) {
      console.log(err);
      console.log(result);
    }
    if (result.rows[0].online_test_allowed === 'true') {
      query2 = `select * from test where _id not in(select test_id from result where student_id = ${
        req.params.student_id
      }) order by _id desc`;
    } else {
      query2 = `select * from test where set_as_demo_test = 'true' `;
    }
    pool_2.query(query2, (err, result) => {
      if (err) throw err;
      const filterResult = result.rows.filter(item => {
        return isOnline(item);
      });
      res.json(filterResult);
    });
  });
});

router.get('/fetch_test_questions_by_test_id/:test_id/p', (req, res) => {
  try {
    let query = `SELECT o._id as option_id , o.test_question_id , o.english_text as option_english_text , o.hindi_text as option_hindi_text  , q.* FROM test_options o , test_questions q where o.test_question_id = q._id and q.test_id = ${
      req.params.test_id
    }   order by o._id `;
    pool_2.query(query, (err, result) => {
      if (err) console.log(err);
      res.json(result.rows);
    });
  } catch (err) {
    console.log(err);
  }
});

router.post('/submit_test/p', (req, res) => {
  try {
    let data = req.body;
    let query = `insert into result(test_id,student_id,correct,incorrect,skipped,totalMarks,result,time_taken)
  values(${parseInt(data.test_id)},${parseInt(data.student_id)},
  '${data.correct}','${data.incorrect}','${data.unattempt}','${
      data.totalMarks
    }','${data.result}','${data.time_taken}')`;
    pool_2.query(query, (err, result) => {
      if (err) {
        console.log(err);
      }
      res.json({ code: 'success' });
    });
  } catch (err) {
    console.log(err);
  }
});

router.get('/results/:test_id/p', (req, res) => {
  let query = `select row_number() over (order by cast(r.result as double precision) desc , cast(r.time_taken as double precision)) as rank  ,(select s.name from student as s where s._id = r.student_id) as name , (r.result || ' %') as RESULT ,r.time_taken,r.incorrect,r.correct,r.skipped,r.totalmarks    from result as r where test_id = '${
    req.params.test_id
  }' order by cast(r.result as double precision) desc , cast(r.time_taken as double precision)`;
  pool_2.query(query, (err, result) => {
    if (err) console.log(err);
    try {
      res.json(result.rows);
    } catch (error) {
      console.log(error);
    }
  });
});

router.get('/set_demo_test/:id/p', (req, res) => {
  let query2 = `update test set set_as_demo_test = 'true' where _id = ${
    req.params.id
  } `;
  let query1 = `update test set set_as_demo_test = 'false'`;

  db.tx(t => {
    return t.batch([t.none(query1), t.none(query2)]);
  })
    .then(data => {
      res.json({ code: 'success' });
    })
    .catch(error => {
      console.log(error); // print error;
    });
});

router.get('/get_all_demo_test/p', (req, res) => {
  let query = `select * from test where set_as_demo_test = 'true'`;
  pool_2.query(query, (req, res) => {
    if (err) throw err;
    res.json(result.rows);
  });
});

module.exports = router;
