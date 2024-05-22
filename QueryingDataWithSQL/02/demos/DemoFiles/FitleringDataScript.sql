SELECT *
FROM Customer
--WHERE FirstName <> 'Sam';
--WHERE FirstName = 'Sam';
WHERE FirstName LIKE 'Sam%' 
	--AND YearlyIncome >= 50000 AND YearlyIncome <= 100000;
	--AND YearlyIncome BETWEEN 50000 AND 100000;
	--AND YearlyIncome IN (20000, 30000);
	AND (YearlyIncome < 50000 OR YearlyIncome > 100000);