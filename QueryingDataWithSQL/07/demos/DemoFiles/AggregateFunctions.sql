-- Retrieve a list of product along with their price and the average price within their subcategory
SELECT
	ProductKey,
	Product,
	Subcategory,
	ListPrice,
	AVG(ListPrice) OVER(PARTITION BY Subcategory) AS AvgPrice
FROM Product
ORDER BY Subcategory DESC;

--Calculate grand total, customer running total
--Display the previous and next order values along with the current order value
SELECT CustomerKey, OrderKey, SalesAmount,
	SUM(SalesAmount) OVER() AS GrandTotal,
	SUM(SalesAmount) OVER(PARTITION BY CustomerKey) AS CustomerGrandTotal,
	SUM(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS CustomerRunningTotal,
	SalesAmount AS CurrentValue,
	MAX(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS PreviousValue,
	MAX(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN 1 FOLLOWING AND 1 FOLLOWING) AS NextValue
FROM Orders
--WHERE CustomerKey IN ('11566', '11242')
ORDER BY CustomerKey, OrderKey;