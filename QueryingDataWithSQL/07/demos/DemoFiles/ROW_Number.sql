WITH OrdersNumbered AS
(
	SELECT CustomerKey, OrderKey, SalesAmount,
		ROW_NUMBER() OVER(PARTITION BY CustomerKey ORDER BY SalesAmount) AS Row_Number
	FROM Orders
)

SELECT *
FROM OrdersNumbered
--WHERE Row_Number = 1
--WHERE Row_Number = 2
WHERE Row_Number BETWEEN 5 AND 10;
