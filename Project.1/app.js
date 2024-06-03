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
// var person = {
//     email: faker.internet.email(),
//     created_at: faker.date.past()
// };

// var end_result = connection.query('INSERT INTO users SET ?', person, function (err, result) {
//     if (err) throw err;
//     console.log(result);
// });

// connection.end();


// Inserting Lots of DATA 3!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
var data = [];
for(var i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}

var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(q, [data], function(err, result) {
  console.log(err);
  console.log(result);
});
 
connection.end();