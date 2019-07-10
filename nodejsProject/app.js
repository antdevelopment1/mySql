const faker = require("faker");
const mysql = require("mysql");

const conn = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "join_us"
});

conn.connect(function(err) {
  if (err) {
    return console.log(err);
  }
  console.log("Connected!");
});

let q = "select count(*) as total from users";

conn.query(q, function(error, results, fields) {
  if (error) {
    throw error;
  }
  console.log(results[0].total);
});

// let addEmail = "insert into users (email) values ('locksley@gmail.com');";

// conn.query(addEmail, function(error, results, fields) {
//   if (error) {
//     throw error;
//   }
//   console.log(results);
// });

// Inserting data
let person = {
  email: faker.internet.email(),
  created_at: faker.date.past()
};

conn.query("insert into users set ?", person, function(err, result) {
  if (err) {
    throw err;
  }
  console.log(result);
});

let getAll = "select * from users";

conn.query(getAll, function(error, results, fields) {
  if (error) {
    throw error;
  }
  console.log(results);
});

conn.end();
