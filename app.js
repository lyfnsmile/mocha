var http = require('http'),
    PORT = 3000;
 
function onRequest(request, response) {
    console.log("Request received.");
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.write("Hello World");
    response.end();
}
 
var server = http.createServer(onRequest);
var boot = function () {
    server.listen(PORT, function () {
        console.info('Express server listening on port ' + PORT);
    });
};
var shutdown = function () {
    server.close();
};
/* istanbul ignore if  */
if (require.main === module) {
    boot();
} else {
    console.info('Running app as a module');
    exports.boot = boot;
    exports.shutdown = shutdown;
}