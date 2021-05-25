var cluster = require('cluster');
var http = require('http');
var numWorkers = 2;

if (cluster.isMaster) {
    // fork workers.
    for (var i = 0; i < numWorkers; i++) {
        console.log('master: about to fork a worker');
        cluster.fork();
    }

    cluster.on('fork', function (worker) {
        console.log('master: fork event (worker ' + worker.id + ')');
    });

    cluster.on('online', function (worker) {
        console.log('master: online event (worker ' + worker.id + ')');
    });

    cluster.on('listening', function (worker, address) {
        console.log('master: listening event (worker ' + worker.id + ', pid ' + worker.process.pid + ', ' + address.address + ':' + address.port + ')');
    });

    cluster.on('exit', function (worker, code, signal) {
        console.log('master: exit event (worker ' + worker.id + ')');
    });
} else {
    console.log('worker: worker #' + cluster.worker.id + ' ready!');
    var count = 0;
    // W orker ca share any TCP connection
    // In this case its a HTTP server
    http.createServer(function (req, res) {
        res.writeHead(200);
        //console.dir(req);
        count++;
        console.log('Worker #' + cluster.worker.id + " is incrementing count to " + count);
        res.end("hello world from worker #" + cluster.worker.id + " (pid " + cluster.worker.process.id + ") with count= " + count + "\n");
        if (count === 3) {
            cluster.worker.destroy();
        }
    }).listen(8080, '127.0.0.1');
}

/* how to run
node 4_cluster.js
curl http://127.0.0.1:8080
*/
