var util = require('util');
var fs = require('fs');
var log_file = fs.createWriteStream(__dirname + '/../logs/post-hook.log', {flags : 'a'});
var log_stdout = process.stdout;
var exec = require('child_process').exec;
var data = false;
var callback = null;

console.log = function(d) { //
  log_file.write(util.format(d) + '\n');
  //log_stdout.write(util.format(d) + '\n'); //for when debugging scripts (outputs with flow --log 3).
};

function complete(error, stdout, stderr) { 
	if(stdout.length !== 0 ){
		var now = new Date();
		console.log(now.toUTCString());
		console.log(stdout) 

		callback();
	}

}


exports.hook = function(flow, done) {
	callback = done;
	exec('hooks/post-hook.sh', complete);
	//done();
}



