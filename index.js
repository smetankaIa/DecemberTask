const http = require("node:http");

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify({message: "Hello, docker"}));
});

server.listen(5050, () => console.log('Http server started!'));
