-- Calculating average order value
SELECT AVG(Quantity)
FROM Orders;

-- Filtering data using static data
SELECT
	OrderKey,
	Quantity
FROM Orders
WHERE Quantity > 2;


-- Filtering data using subqueries
SELECT
	OrderKey,
	Quantity
FROM Orders
WHERE Quantity > (SELECT AVG(Quantity) FROM Orders) 
	  AND CustomerKey IN (SELECT CustomerKey FROM Customer WHERE Occupation = 'Management')
ORDER BY OrderKey;


-- Calculating running totals using subqueries
SELECT
	OrderKey,
	Quantity,
	(SELECT SUM(Quantity)
	 FROM Orders AS o2
	 WHERE o2.OrderKey <= o1.OrderKey
	   AND Quantity > (SELECT AVG(Quantity) FROM Orders)
	   AND CustomerKey IN (SELECT CustomerKey FROM Customer WHERE Occupation = 'Management')) AS RunningTotal
FROM Orders AS o1
WHERE Quantity > (SELECT AVG(Quantity) FROM Orders)
	  AND CustomerKey IN (SELECT CustomerKey FROM Customer WHERE Occupation = 'Management')
ORDER BY OrderKey;
