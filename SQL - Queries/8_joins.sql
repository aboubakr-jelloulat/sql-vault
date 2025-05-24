-- INNER JOIN: Returns only the rows where there is a match between Customers and Orders
USE Shop_Database;
SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



-- LEFT OUTER JOIN: Returns all customers and their orders; if a customer has no order, Amount will be NULL
USE Shop_Database;
SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;



-- RIGHT OUTER JOIN: Returns all orders and their customers; if an order has no matching customer, customer info will be NULL
USE Shop_Database;
SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers
RIGHT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- FULL OUTER JOIN: Returns all customers and all orders; matches if possible, else fills with NULLs
-- NOTE: MySQL doesn't support FULL OUTER JOIN directly. You can emulate it using UNION.
SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers
RIGHT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

