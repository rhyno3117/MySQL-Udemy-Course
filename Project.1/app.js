var { faker } = require('@faker-js/faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'cocomysql',
    database: 'join_us'
});

// Selecting DATA
//   var q = 'SELECT COUNT(*) AS total FROM users';

//   connection.query(q, function (error, results, fields) {
//     if (error) throw error;
//     console.log(results[0].total);
//  });


// Inserting DATA
//   var q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@email.com")';

//   connection.query(q, function (error, results, fields) {
//     if (error) throw error;
//     console.log(results);
//  });

// Inserting DATA 2
var person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};

var end_result = connection.query('INSERT INTO users SET ?', person, function (err, result) {
    if (err) throw err;
    console.log(result);
});
console.log(end_result.sql);
connection.end();


// console.log(faker.internet.email());
// console.log(faker.date.past());

// function generateAddress(){
//     console.log(faker.location.streetAddress());
//     console.log(faker.location.city());
//     console.log(faker.location.state());
//   }

//   generateAddress(); 

