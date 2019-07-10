// const faker = require("faker");
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

let q = "select * from users";

conn.query(q, function(error, results, fields) {
  if (error) {
    throw error;
  }
  console.log(results);
});

conn.end();
