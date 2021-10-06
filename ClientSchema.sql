-- Create and grant all privileges to a user (admin)
CREATE USER Amazon IDENTIFIED BY amazon;
GRANT ALL PRIVILEGES TO Amazon;


-- Create database
CREATE DATABASE Amazon;


--
-- TABLE: employees
--
CREATE TABLE employees (
employee_number INT,
fName VARCHAR(10) NOT NULL,
lName VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
state VARCHAR(2) NOT NULL,
PRIMARY KEY (employee_number)
);


--
-- TABLE: customers
--
CREATE TABLE customers (
customer_number INT,
fName VARCHAR(10) NOT NULL,
lName VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
state VARCHAR(2) NOT NULL,
PRIMARY KEY (customer_number)
);


--
-- TABLE: items
--
CREATE TABLE items (
item_number INT,
item_name varchar(80) NOT NULL,
price decimal(10,2) NOT NULL,
stock_quantity INT,
PRIMARY KEY (item_number)
);

--
-- TABLE: orders
--
CREATE TABLE orders (
order_number INT,
customer_number INT,
employee_number INT,
item_number INT,
quantity INT DEFAULT 1,
date_of_receipt DATE,
ship_date DATE,
PRIMARY KEY (order_number),
CONSTRAINT FK_CustomerOrder FOREIGN KEY (customer_number) REFERENCES customers(customer_number),
CONSTRAINT FK_EmployeeOrder FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
CONSTRAINT FK_ItemOrder FOREIGN KEY (item_number) REFERENCES items(item_number)
);

