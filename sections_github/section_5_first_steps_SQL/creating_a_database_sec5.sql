--Creating a Database


CREATE DATABASE [IF NOT EXISTS] database_name; 

-- creating a a table

CREATE TABLE table_name
(
	column_1 data_type constraints,
	column_2 data_type constraints,
	column_n data_type constraints
); -- creates a table, you specify the column names inside the parenthesis, have to add at least one column

DROP TABLE table_name; -- used to delete the table



CREATE DATABASE IF NOT EXISTS Sales; --creates a database called Sales

USE Sales; --selects the database to use 

CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT
);