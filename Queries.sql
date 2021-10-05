SELECT * FROM customers;

SELECT * FROM items
WHERE item_number = ( SELECT item_number FROM orders
WHERE customer_number = ( SELECT customer_number
FROM customers WHERE fname = 'Tom' AND lname = 'Brady'));

SELECT order_number FROM orders
WHERE employee_number = ( SELECT employee_number   
FROM employees WHERE fname = 'Tony' AND lname = 'Romo');

SELECT fname, lname
FROM customers
WHERE customer_number in ( SELECT customer_number
FROM orders WHERE item_number in ( SELECT item_number
FROM item WHERE price > 30.00));

SELECT fname, lname, city
FROM employees, item, orders
WHERE item.price > 50
AND employees.employee_number = orders.employee_number
AND item.item_number = orders.item_number;

SELECT customers.fname, customers.lname
FROM customers, employees, orders
WHERE customers.city = employees.city
AND orders.employee_number = employees.employee_number
AND orders.customer_number = customers.customer_number;

SELECT fname, lname
FROM customers, orders
WHERE orders.ship_date = orders.ship_date
AND orders.customer_number = customers.customer_number;

SELECT fname, lname
FROM customers
WHERE customer_number
NOT IN(SELECT customer_number FROM orders);

SELECT i.item_number, i.item_name, sum (o.quantity) FROM item i inner JOIN orders o ON i.item_number = o.item_number 
GROUP BY i.item_number, i.item_name;

SELECT e.employee_number, e.fname, e.lname, sum (i.price * o.quantity) AS totalsales FROM employees e 
inner JOIN orders o ON e.employee_number = o.employee_number
inner JOIN item i ON o.item_number = i.item_number GROUP BY e.employee_number, e.fname, e.lname;
