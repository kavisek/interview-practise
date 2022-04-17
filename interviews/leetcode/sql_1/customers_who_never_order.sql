SELECT name as Customers FROM Customers
WHERE id NOT IN (SELECT DISTINCT(customerID) FROM Orders)