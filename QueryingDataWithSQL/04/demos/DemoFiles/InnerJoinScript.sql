--Inspecting the data
SELECT TOP 5 * FROM Customer;
SELECT TOP 5 * FROM Orders;

--Performing the inner join
SELECT *
FROM Customer AS c
INNER JOIN Orders AS o
	ON c.CustomerKey = o.CustomerKey;

--Calculating the number of orders and their values by customer
SELECT c.CustomerKey, c.FirstName, 
	   COUNT(o.OrderKey) AS Orders, 
	   SUM(o.SalesAmount) AS Amount
FROM Customer AS c
INNER JOIN Orders AS o
	ON c.CustomerKey = o.CustomerKey
GROUP BY  c.CustomerKey, c.FirstName
ORDER BY Orders DESC;