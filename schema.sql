--  Twitter Tweets Table
-- mysql -u root -p password
-- show databases
-- use database
-- paste create table statement into mysql

-- CREATE TABLE tweets (
--     username varchar(16),  
--     tweet varchar(100), 
--     likes INT
-- );

-- CREATE TABLE cats (
--     name varchar(100),
--     age INT
-- )

-- Pastries Table
-- At least two columns 
-- Name for pastry and quantity 
-- Name is 50 characters max
-- Inspect the table/columns in the CLI
-- Delete the table

-- Create a bakery database
CREATE TABLE pastries(
    name varchar(50),
    quantity INT,
    delivery_date timestamp
);