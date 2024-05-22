SELECT Category,
	   Color,
	   COUNT(*) AS Products,
	   FORMAT(MAX(ListPrice), '0') AS Maximum_Price,
	   FORMAT(MIN(ListPrice), '0') AS Minimum_Price,
	   FORMAT(AVG(ListPrice), '0') AS Average_Price
FROM Product
GROUP BY Category, Color;
