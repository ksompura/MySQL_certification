-- can add constraints a couple of ways
-- can drop the table and run a create table with the foriegn key 


CREATE TABLE sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
PRIMARY KEY (purchase_number), -- One way to set the primary key, can also set it in the constraints when creating the column 
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE    
);

-- another way to add contraint without dropping the table
ALTER TABLE table_name
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE; -- will run without ON DELETE CASCADE, however professionals will regularly include it



USE Sales;


CREATE TABLE sales
(
    purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE; -- will run without ON DELETE CASCADE, however professionals will regularly include it


CREATE TABLE customers
(
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

CREATE TABLE items
(
    item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10,2),
    company_id VARCHAR(255),
PRIMARY KEY (item_code)
);

CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INT(12),
PRIMARY KEY (company_id)
);


-- UNIQUE KEY constraint
CREATE TABLE customers
(
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (email_address)
);

-- another way to add Unique Keys
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

-- remove unique key
ALTER TABLE customers
DROP INDEX email_address;


-- DEFAULT Constraint
CREATE TABLE customers
(
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT DEFAULT 0, -- sets the default to 0
PRIMARY KEY (customer_id)
);

------------
CREATE TABLE customers
(
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO customers(first_name, last_name, gender,
    email_address, number_of_complaints)
VALUES('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

-- change default number of complaints to 0
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M');

SELECT *
FROM customers;

-- drop the default constraint
ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

-- Make default company name "X"
CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT "X",
    headquarters_phone_number VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headquarters_phone_number)
);


--  NOT NULL Constraint
DROP TABLE companies;

CREATE TABLE companies
(
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY (company_id)
);

-- drop the not null constraint
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

-- add in the not null constraint
ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

INSERT INTO companies (headquarters_phone_number, company_name)
VALUES ('+1 (202) 555-0196', 'Company A');

SELECT * FROM companies;

-- add not null constraint to phone number
ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;

-- remove not null constraint from phone number
ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

