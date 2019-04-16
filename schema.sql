--  Twitter Tweets Table
-- mysql -u root -p password
-- show databases
-- use database
-- paste create table statement into mysql

CREATE TABLE tweets (
    username varchar(16),  
    tweet varchar(100), 
    likes INT
);

CREATE TABLE cats (
    name varchar(100),
    age INT
)