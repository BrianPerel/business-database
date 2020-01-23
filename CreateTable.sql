CREATE TABLE employees (
Employee_number int,
fName varchar(10) NOT NULL,
lName varchar(20) NOT NULL,
city varchar(20) NOT NULL,
state varchar(2) NOT NULL,
PRIMARY KEY (Employee_number)
);


CREATE TABLE customers (
Customer_number int,
fName varchar(10) NOT NULL,
lName varchar(20) NOT NULL,
city varchar(20) NOT NULL,
state varchar(2) NOT NULL,
PRIMARY KEY (Customer_number)
);

CREATE TABLE item (
Item_number int,
item_name varchar(80) NOT NULL,
price decimal(10,2) NOT NULL,
Stock_quantity int,
PRIMARY KEY (Item_number)
);

CREATE TABLE orders (
Order_number int,
Customer_number int,
Employee_number int,
Item_number int,
quantity int,
Date_of_Receipt date,
Ship_date date,
PRIMARY KEY (Order_number),
CONSTRAINT FK_CustomerOrder FOREIGN KEY (Customer_number) REFERENCES customers(Customer_number),
CONSTRAINT FK_EmployeeOrder FOREIGN KEY (Employee_number) REFERENCES employees(Employee_number),
CONSTRAINT FK_ItemOrder FOREIGN KEY (Item_number) REFERENCES item(Item_number)
);


