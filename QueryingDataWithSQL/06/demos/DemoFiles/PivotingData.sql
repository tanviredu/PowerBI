WITH TerritoryYearQuantity AS
(
SELECT
	o.SalesTerritoryKey,
	d.CalendarYear,
	SUM(Quantity) AS Quantity
FROM Orders o
	LEFT JOIN Date d
	ON o.OrderDateKey = d.DateKey
GROUP BY o.SalesTerritoryKey, d.CalendarYear
)

-- SELECT * FROM TerritoryYearQuantity;

SELECT 
	SalesTerritoryKey,
	[2010], [2011], [2012], [2013], [2014]
FROM TerritoryYearQuantity
	PIVOT(SUM(Quantity) FOR CalendarYear IN ([2010], [2011], [2012], [2013], [2014])) AS PivotedData;
