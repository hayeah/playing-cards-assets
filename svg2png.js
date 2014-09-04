svg2png = require("svg2png");

source = process.argv[2];
dest = process.argv[3];

svg2png(source, dest, function (err) {
  if(err) {
    consle.error("svg conversion fail: "+source);
  }
});