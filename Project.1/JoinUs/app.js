// Required express
// Executed and saved in app variable
// Started up server to listen and make it run
// Request is sent on server http://localhost:8080 and we see message with / addded
var express = require('express');
var mysql = require('mysql');
var app = express();

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'cocomysql',
    database: 'join_us'
});

app.get("/", function (req, res) {
    // Find count of users in DB
    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function(err, results){
        if (err) throw err;
        var count = results[0].count;
        res.send("We have " + count + " users in our db")
    });
});

app.get("/joke", function (req, res) {
    var joke = "What do you call a dog that does magic tricks? A labradcadabrador"
    res.send(joke);
});

app.get("/random_num", function (req, res) {
    var num = Math.floor(Math.random() * 10) + 1;
    res.send("Your lucky number is " + num)
})

app.listen(8080, function () {
    console.log("Server running on port 8080!");
});
