-- Create and grant all privileges to a user (amazon) with password (amazon)
CREATE USER amazon IDENTIFIED BY amazon;
GRANT ALL PRIVILEGES TO amazon;

-- Create database
CREATE DATABASE amazon;

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
item_name VARCHAR(80) NOT NULL,
price DECIMAL(10,2) NOT NULL CHECK (price > 0),
stock_quantity INT,
PRIMARY KEY (item_number)
UNIQUE (item_name)
);

--
-- TABLE: orders
--
CREATE TABLE orders (
order_number INT,
customer_number INT,
employee_number INT,
item_number INT,
quantity INT DEFAULT 1 CHECK (quantity >= 0),
date_of_receipt DATE CHECK (date_of_receipt <= CURRENT_DATE),
ship_date DATE CHECK (ship_date >= date_of_receipt),
PRIMARY KEY (order_number),
CONSTRAINT FK_CustomerOrder FOREIGN KEY (customer_number) REFERENCES customers(customer_number),
CONSTRAINT FK_EmployeeOrder FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
CONSTRAINT FK_ItemOrder FOREIGN KEY (item_number) REFERENCES items(item_number)
);
