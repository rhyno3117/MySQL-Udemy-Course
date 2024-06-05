// Required express
// Executed and saved in app variable
// Started up server to listen and make it run
// Request is sent on server http://localhost:8080 and we see message with / addded
var express = require('express');
var app = express();

app.get("/", function(req, res){
    res.send("You've reached the home page")
});

app.get("/joke", function(req, res){
    var joke = "What do you call a dog that does magic tricks? A labradcadabrador"
    res.send(joke);
});

app.listen(8080, function(){
    console.log("Server running on port 8080!");
});
