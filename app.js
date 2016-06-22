var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.send('hello world\n');
});

app.listen(8080);
console.log('Running on port 8080');
