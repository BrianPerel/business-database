SELECT * FROM CUSTOMERS;

SELECT * FROM ITEM
WHERE Item_number = ( SELECT Item_number FROM Orders
WHERE Customer_number = ( SELECT Customer_number
FROM Customers WHERE Fname = 'Tom' AND Lname = 'Brady'));

SELECT Order_number FROM Orders
WHERE Employee_number = ( SELECT Employee_number   
FROM Employees WHERE Fname = 'Tony' AND Lname = 'Romo');

SELECT Fname, Lname
FROM Customers
WHERE Customer_number in ( SELECT Customer_number
FROM Orders WHERE Item_number in ( SELECT Item_number
FROM Item WHERE price > 30.00));

SELECT Fname, Lname, City
FROM Employees, Item, Orders
WHERE Item.price > 50
AND Employees.Employee_number = Orders.Employee_number
AND Item.Item_number = Orders.Item_number;

SELECT Customers.Fname, Customers.Lname
FROM Customers, Employees, Orders
WHERE Customers.City = Employees.City
AND Orders.Employee_number = Employees.Employee_number
AND Orders.Customer_number = Customers.Customer_number;

SELECT Fname, Lname
FROM Customers, Orders
WHERE Orders.Ship_date = Orders.ship_date
AND Orders.Customer_number = Customers.Customer_number;

SELECT Fname, Lname
FROM Customers
WHERE Customer_number
NOT IN(SELECT Customer_number FROM Orders);

SELECT i.Item_number, i.Item_name, sum (o.quantity) FROM Item i inner JOIN Orders o ON i.Item_number = o.Item_number 
GROUP BY i.item_number, i.item_name;

SELECT e.Employee_number, e.Fname, e.Lname, sum (i.price * o.quantity) AS Totalsales FROM Employees e 
inner JOIN Orders o ON e.Employee_number = o.Employee_number
inner JOIN Item i ON o.Item_number = i.Item_number GROUP BY e.Employee_number, e.Fname, e.Lname;
