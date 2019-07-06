var express = require('express');
var router = express.Router();
var request = require('request');

router.get('/test_payment_instamojo', (req, res) => {
  var headers = {
    'X-Api-Key': 'test_d23de9e296e298e0bfb8062ad46',
    'X-Auth-Token': 'test_94e327959ece8b0afa8d84af11c'
  };
  var payload = {
    purpose: 'Made Easy 16',
    amount: '9',
    phone: '9630884259',
    buyer_name: 'Yash Kumar',
    redirect_url: 'http://www.example.com/redirect/',
    send_email: true,
    webhook: 'http://www.example.com/webhook/',
    send_sms: true,
    email: 'saurabhrathorepk@gmail.com',
    allow_repeated_payments: false
  };

  request.post(
    'https://test.instamojo.com/api/1.1/payment-requests/',
    { form: payload, headers: headers },
    function(error, response, body) {
      console.log(error, response, body);
      if (!error && response.statusCode == 201) {
        console.log(body);
      }
    }
  );
  res.end();
});

module.exports = router;
