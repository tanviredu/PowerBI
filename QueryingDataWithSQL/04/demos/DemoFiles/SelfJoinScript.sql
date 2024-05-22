--Retriving a list containing the employee name and their manager
SELECT e1.FirstName, e1.LastName, e2.FirstName, e2.LastName
FROM  EMployee e1
LEFT OUTER JOIN Employee e2
	ON e1.EmployeeKey = e2.ManagerKey;