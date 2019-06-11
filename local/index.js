var express = require('express');
var os = require("os");
var app = express();
var hostname = os.hostname();

app.get('/', function (req, res) {
  res.send('Hello from ' + hostname + " - container \n");
});

app.listen(4000, function () {
  console.log('Example app listening on port 4000!');
});
