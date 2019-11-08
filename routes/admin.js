var express = require('express');
var router = express.Router();
var pgsql = require('pg-pool');
var pool_2 = new pgsql(require('../database').pgsql);
var jwt = require('jsonwebtoken');
var nodemailer = require('nodemailer');
let transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: 'yashpk789987@gmail.com',
    pass: 'yashmaihar'
  }
});

let generateToken = () => {
  let token = jwt.sign(
    {
      data: 'foobar'
    },
    'Reactnative@2018',
    { expiresIn: 60 * 10 }
  );
  return token;
};

let sendMail = (mail_id, generated_url) => {
  var mailOptions = {
    from: 'Yashpk2128@gmail.com',
    to: mail_id,
    subject: 'Password Reset',
    text:
      'Follow Given Link To Reset Password\nPlease Note That this link will be expired in 10 minutes',
    html: `<html><a href = '${generated_url}'>Follow This Link To Reset Password</a></html>`
  };
  transporter.sendMail(mailOptions, function(error, response) {
    if (error) {
    } else {
    }
  });
};

router.get('/forget_password/p', (req, res) => {
  let query = `select * from admin `;
  pool_2.query(query, function(err, result) {
    if (err) throw err;
    if (result.rows.length === 0) {
      res.json({ code: 'no_admin' });
    } else {
      let token = generateToken();
      let url = `http://${req.get('host')}/admin/update_password/${token}/p`;
      sendMail('shshagrawal05@gmail.com', url);
      res.json({ code: 'email_sent' });
    }
  });
});

router.get('/update_password/:token/p', (req, res) => {
  try {
    console.log(req.params.token);
    var decoded = jwt.verify(req.params.token, 'Reactnative@2018');
    res.render('updatePassword', { token: req.params.token, message: '' });
  } catch (err) {
    console.log('ERROR', err);
    res.end('<h1>Sorry..<br/>This Link Is Expired..</h1>');
  }
});

router.post('/reset_password/p', function(req, res) {
  let data = req.body;
  if (data.password == data.confirm_password) {
    try {
      var decoded = jwt.verify(req.body.token, 'Reactnative@2018');
      let query = `update admin set password = '${data.password}' where email = 'shshagrawal05@gmail.com'`;
      pool_2.query(query, function(err, result) {
        if (err) throw err;
        res.redirect('https://yashpk789987.github.io/AAA_DASHBOARD/#/login');
      });
    } catch (err) {
      res.end('<h1>Sorry..<br/>This Link Is Expired..</h1>');
    }
  } else {
    res.render('updatePassword', {
      message: 'Password And Confirm Password Do Not Match',
      token: req.body.token
    });
  }
});

router.post('/check_login/p', function(req, res) {
  let query = `select * from admin where email = '${req.body.email}' and password = '${req.body.password}'`;
  pool_2.query(query, function(err, result) {
    if (err) throw err;
    if (result.rows.length === 0) {
      res.json({ code: 'login_failed' });
    } else {
      res.json({ ...result.rows[0], code: 'login_success' });
    }
  });
});

module.exports = router;
