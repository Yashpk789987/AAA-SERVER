const { exec } = require('child_process');
exec('git push heroku master', (err, stdout, stderr) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(stdout);
  console.log(stdout);
});
