var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var category_and_sub_category_Router = require('./routes/categories_and_sub_categories');
var QuestionRouter = require('./routes/questions');
var PdfRouter = require('./routes/pdf');
var testsRouter = require('./routes/tests');
var studentRouter = require('./routes/student');
var authorizeRouter = require('./routes/authorize');
var app = express();
var cookieSession = require('cookie-session');
app.use(
  cookieSession({
    name: 'session',
    keys: ['key1', 'key2']
  })
);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(cors());
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/categories_and_sub_categories', category_and_sub_category_Router);
app.use('/questions', QuestionRouter);
app.use('/pdf', PdfRouter);
app.use('/tests', testsRouter);
app.use('/students', studentRouter);
app.use('/authorize', authorizeRouter);

app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
