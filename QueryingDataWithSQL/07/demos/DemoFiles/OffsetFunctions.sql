--Offset Functions
SELECT 
	CustomerKey, 
	OrderKey, 
	SalesAmount AS CurrentValue,
	--MAX(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS PreviousValue,
	--MAX(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN 1 FOLLOWING AND 1 FOLLOWING) AS NextValue
	LAG(SalesAmount, 2, 0) OVER(PARTITION BY CustomerKey ORDER BY OrderKey) AS PreviousValue,
	LEAD(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey) AS NextValue,
	FIRST_VALUE(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS FirstValue,
	LAST_VALUE(SalesAmount) OVER(PARTITION BY CustomerKey ORDER BY OrderKey ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS LastValue
FROM Orders
WHERE CustomerKey IN ('11566', '11242')
ORDER BY CustomerKey, OrderKey;