SELECT 
	Product, 
	CAST(StandardCost AS FLOAT) AS StandardCost
FROM Product
WHERE Subcategory = 'Road Bikes'
ORDER BY StandardCost DESC;