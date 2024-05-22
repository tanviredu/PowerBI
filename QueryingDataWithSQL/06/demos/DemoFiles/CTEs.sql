WITH EmployeeSales AS
(
	SELECT EmployeeKey, SUM(SalesAmount) AS TotalEmployeeSales
	FROM Orders
	GROUP BY EmployeeKey
),
EmployeeCustomerSales AS
(
	SELECT EmployeeKey, CustomerKey, SUM(SalesAmount) AS EmployeeCustomerSales
	FROM Orders
	GROUP BY EmployeeKey, CustomerKey
)

SELECT
	cte1.EmployeeKey,
	CustomerKey,
	FORMAT(EmployeeCustomerSales, 'N0') AS CustomerSales,
	FORMAT(TotalEmployeeSales, 'N0') AS TotalEmployeeSales,
	FORMAT(EmployeeCustomerSales/TotalEmployeeSales, 'P2') AS PrctSales
FROM EmployeeCustomerSales AS cte1
	LEFT JOIN EmployeeSales AS cte2
	ON cte1.EmployeeKey = cte2.EmployeeKey
ORDER BY PrctSales DESC;
