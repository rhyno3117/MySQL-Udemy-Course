var express = require('express');
var app = express();

app.get("/", function(req, res){
    res.send("You've reached the home page")
});

app.listen(8080, function(){
    console.log("Server running on port 8080!");
});
