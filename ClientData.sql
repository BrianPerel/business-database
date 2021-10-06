-- verify that the table is empty
SELECT * FROM employees;

INSERT INTO employees VALUES(10021, 'John', 'Wayne', 'Boston', 'MA');
INSERT INTO employees VALUES(10022, 'Tony', 'Romo', 'Boston', 'MA');
INSERT INTO employees VALUES(10023, 'Bruce', 'Wilson', 'Boston', 'MA');
INSERT INTO employees VALUES(10024, 'Dimitri', 'Hulsin', 'Boston', 'MA');
INSERT INTO employees VALUES(10025, 'Tim', 'Harper', 'Boston', 'MA');
INSERT INTO employees VALUES(10026, 'Denzel', 'Washington', 'Waco', 'TX');
INSERT INTO employees VALUES(10027, 'Sam', 'Fisher', 'Towson', 'MD');

-- verify that the table is empty
SELECT * FROM customers;

INSERT INTO customers VALUES(80090, 'Bill', 'Mares', 'Hartford', 'CT');
INSERT INTO customers VALUES(80091, 'Tom', 'Brady', 'Los Angeles', 'CA');
INSERT INTO customers VALUES(80092, 'George', 'Clinton', 'Indianapolis', 'IN');
INSERT INTO customers VALUES(80093, 'Nick', 'Davidson', 'Hartford', 'CT');
INSERT INTO customers VALUES(80094, 'John', 'Wang', 'Boston', 'MA');
INSERT INTO customers VALUES(80095, 'Patrick', 'Swayze', 'San Francisco', 'CA');
INSERT INTO customers VALUES(80096, 'Elon', 'Musk', 'San Francisco', 'CA');

-- verify that the table is empty
SELECT * FROM items;

INSERT INTO items VALUES(54040, 'The Matrix Poster', '7.95', 30000);
INSERT INTO items VALUES(54041, 'Car Steering Wheel Cover', '34.99', 40000);
INSERT INTO items VALUES(54042, 'Blue earbuds', '9.99', 80000);
INSERT INTO items VALUES(54043, 'Sony XBE483A HD TV', '600.00', 150000);
INSERT INTO items VALUES(54044, 'Gildan Mens Assorted V-neck T-shirts Multipack', '15.00', 30000);
INSERT INTO items VALUES(54045, 'Halo: The Fall of Reach', '14.99', 90000);
INSERT INTO items VALUES(54046, 'Splinter Cell', '18.00', 20000);


-- verify that the table is empty
SELECT * FROM orders;

INSERT INTO orders VALUES(30020, 80090, 10023, 54040, 2, DATE '2018-06-14', DATE '2018-06-16');
INSERT INTO orders VALUES(30021, 80091, 10024, 54041, 1, DATE '2018-02-22', DATE '2018-02-24');
INSERT INTO orders VALUES(30022, 80092, 10025, 54042, 1, DATE '2018-05-13', DATE '2018-05-15');
INSERT INTO orders VALUES(30023, 80093, 10024, 54043, 1, DATE '2018-06-03', DATE '2018-06-05');
INSERT INTO orders VALUES(30024, 80094, 10025, 54044, 2, DATE '2018-06-30', DATE '2018-07-02');
INSERT INTO orders VALUES(30025, 80094, 10022, 54040, 5, DATE '2018-06-30', DATE '2018-07-02');

-- verify that the tables have been populated
SELECT * FROM all_tables;

