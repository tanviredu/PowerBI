--ISNULL()
SELECT TOP 10
	Product,
	EndDate,
	Status,
	ISNULL(Status, 'Past') AS Stage
FROM Product;

--NULLIF()
SELECT 
	Product,
	NULLIF(StartDate, 0) AS StartDate
FROM Product
WHERE StartDate = 0;

--COALESCE()
SELECT TOP 10
	p.ProductKey,
	p.Product,
	COALESCE(Product, Model, SKU) AS ProductName,
	SUM(o.OrderQuantity) AS OrderQuantity
FROM OrderDetails o
	LEFT JOIN Product p
	ON o.ProductKey = p.ProductKey
GROUP BY p.ProductKey, p.Product, COALESCE(Product, Model, SKU)
ORDER BY OrderQuantity DESC;