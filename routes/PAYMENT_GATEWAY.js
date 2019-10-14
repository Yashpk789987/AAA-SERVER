var express = require('express');
var router = express.Router();
var request = require('request');
var moment = require('moment-timezone');
var pgsql = require('pg-pool');
var pool_2 = new pgsql(require('../database').pgsql);

function findAmountByPackId(pack_id) {
  let amount = 0;
  // return 10;
  switch (pack_id) {
    case 1:
      amount = 100;
      break;
    case 2:
      amount = 300;
      break;
    case 3:
      amount = 500;
      break;
  }
  let total_amount = amount + amount * 0.02 + 3;
  return total_amount.toString();
}

router.post('/payment_instamojo/p', (req, res) => {
  // var headers = {
  //   'X-Api-Key': '18d2c2a55141fca1b31bcfb9ac9e1674',
  //   'X-Auth-Token': '021f6c6ac9a65387e6ca1ea5b7f2c637'
  // };
  var headers = {
    'X-Api-Key': 'test_d23de9e296e298e0bfb8062ad46',
    'X-Auth-Token': 'test_94e327959ece8b0afa8d84af11c'
  };

  const data = req.body;

  var payload = {
    purpose: 'Online Test',
    amount: findAmountByPackId(parseInt(data.pack_id)),
    phone: data.mobile_number,
    buyer_name: data.name,
    redirect_url: 'http://www.example.com/redirect/',
    send_email: false,
    webhook: 'http://www.example.com/webhook/',
    send_sms: false,
    email: data.email_id,
    allow_repeated_payments: true
  };

  // request.post(
  //   'https://www.instamojo.com/api/1.1/payment-requests/',
  //   { form: payload, headers: headers },
  //   function(error, response, body) {
  //     console.log(response.statusCode);
  //     console.log(error);
  //     if (!error && response.statusCode == 201) {
  //       console.log(body);
  //       res.json(JSON.parse(body));
  //     }
  //   }
  // );
  request.post(
    'https://test.instamojo.com/api/1.1/payment-requests/',
    { form: payload, headers: headers },
    function(error, response, body) {
      console.log(response.statusCode);
      console.log(error);
      if (!error && response.statusCode == 201) {
        console.log(body);
        res.json(JSON.parse(body));
      }
    }
  );
});

router.post('/submit_payment_details/p', (req, res) => {
  try {
    let currentDateTime = moment
      .tz(moment(), 'Asia/Kolkata')
      .format('DD/MM/YYYY HH:MM')
      .split(' ');
    let data = null;
    try {
      console.log(req.body);
      data = req.body;
    } catch (err) {
      console.group(err);
    }
    console.log(data);
    let payment_data = data.payment_request.payments[0];
    let query1 = `insert into payments(student_id,payment_date,payment_time,payment_type,amount,instamojo_reference_id,remark) values(
    '${req.body.student_id}','${currentDateTime[0]}','${currentDateTime[1]}','${
      req.body.pack_id
    }','${payment_data.amount}','${payment_data.payment_id}','${JSON.stringify(
      payment_data
    )}'
  )`;
    let query2 = `update student set online_test_allowed = 'true', offline_test_allowed = 'true', pdf_allowed = 'true', payment_status = 'true' where _id = ${req.body.student_id}`;
    console.log(query1);
    console.log(query2);
    pool_2.query(query1, (err, result) => {
      if (err) throw err;
      pool_2.query(query2, (err, result) => {
        if (err) throw err;
        res.json({ code: 'success' });
      });
    });
  } catch (err) {
    console.log(err);
  }
});

router.get('/showAllPayments/:student_id/p', (req, res) => {
  let query = `select * from payments where student_id = '${req.params.student_id}'`;
  pool_2.query(query, (err, result) => {
    if (err) throw err;
    res.json(result.rows);
  });
});

module.exports = router;

// router.get('/test_payment_instamojo', (req, res) => {
// var headers = {
//   'X-Api-Key': 'test_d23de9e296e298e0bfb8062ad46',
//   'X-Auth-Token': 'test_94e327959ece8b0afa8d84af11c'
// };

// var payload = {
//   purpose: 'Made Easy 16',
//   amount: '9',
//   phone: '9630884259',
//   buyer_name: 'Yash Kumar',
//   redirect_url: 'http://www.example.com/redirect/',
//   send_email: true,
//   webhook: 'http://www.example.com/webhook/',
//   send_sms: true,
//   email: 'saurabhrathorepk@gmail.com',
//   allow_repeated_payments: false
// };

//   request.post(
//     'https://test.instamojo.com/api/1.1/payment-requests/',
//     { form: payload, headers: headers },
//     function(error, response, body) {
//       console.log('hello');
//       if (!error && response.statusCode == 201) {
//         console.log(body);
//         res.json(JSON.parse(body));
//       }
//     }
//   );
// });
