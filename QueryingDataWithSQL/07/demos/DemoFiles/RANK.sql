WITH cte AS
(
SELECT ProductKey, Product, Category, ListPrice,
	ROW_NUMBER() OVER W1 AS RowNumber,
	RANK()       OVER W1 AS Rnk,
	DENSE_RANK() OVER W1 AS Dense_Rnk
FROM Product
WINDOW W1 AS (PARTITION BY Category ORDER BY ListPrice DESC)
)

SELECT *
FROM cte	
WHERE Dense_Rnk <= 3;
