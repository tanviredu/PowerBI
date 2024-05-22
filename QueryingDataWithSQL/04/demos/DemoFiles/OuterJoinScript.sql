--Creating a list of customers who didn't place any orders
SELECT c.CustomerKey, c.FirstName, o.OrderKey, o.SalesAmount
FROM Customer AS c
LEFT OUTER JOIN Orders AS o
	ON c.CustomerKey = o.CustomerKey
WHERE o.OrderKey IS NULL;

--Comparing the results of COUNT(*) with COUNT(o.OrderKey)
SELECT c.CustomerKey, c.FirstName, 
	   COUNT(*) AS Count_All_Rows,
	   COUNT(o.OrderKey) AS Count_Orders
FROM Customer AS c
LEFT OUTER JOIN Orders AS o
	ON c.CustomerKey = o.CustomerKey
WHERE o.OrderKey IS NULL
GROUP BY c.CustomerKey, c.FirstName;