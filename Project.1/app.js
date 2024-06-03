var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'cocomysql',
    database: 'join_us'
  });  

  var q = 'SELECT 1+5 AS answer';

  connection.query(q, function (error, results, fields) {
    if (error) throw error;
    console.log(results[0].answer);
 });

 connection.end();

// console.log(faker.internet.email());
// console.log(faker.date.past());

// function generateAddress(){
//     console.log(faker.location.streetAddress());
//     console.log(faker.location.city());
//     console.log(faker.location.state());
//   }

//   generateAddress(); 

