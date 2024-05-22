SELECT
	OrderKey,
	SalesAmount,
	NTILE(9) OVER(ORDER BY EmployeeKey) AS Groups
FROM Orders
--WHERE EmployeeKey = 294;
WHERE EmployeeKey = 292;