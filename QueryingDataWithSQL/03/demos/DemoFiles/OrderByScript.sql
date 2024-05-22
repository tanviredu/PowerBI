--ORDER BY Clause
SELECT 
	Product,
	Subcategory,
	Color,
	ListPrice
FROM Product
--ORDER BY 3, 4 DESC;
ORDER BY Color, ListPrice DESC, Category;

--TOP() Clause
SELECT TOP 10 WITH TIES
	Product,
	Subcategory,
	Color,
	ListPrice
FROM Product
ORDER BY Color, ListPrice DESC, Category;

--OFFSET FETCH
SELECT
	Product,
	Subcategory,
	Color,
	ListPrice
FROM Product
ORDER BY Color, ListPrice DESC, Category
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

