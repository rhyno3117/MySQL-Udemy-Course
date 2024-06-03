var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'join_us'
  });  

// console.log(faker.internet.email());
// console.log(faker.date.past());

// function generateAddress(){
//     console.log(faker.location.streetAddress());
//     console.log(faker.location.city());
//     console.log(faker.location.state());
//   }

//   generateAddress(); 

