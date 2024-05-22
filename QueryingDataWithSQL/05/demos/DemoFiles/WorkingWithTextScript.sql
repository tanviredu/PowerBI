-- Cleaning text data
SELECT 
	UPPER(LTRIM(t.CountryCode)) AS CountryCode,
	--LEN(t.CountryCode) AS Lenght,
	REPLACE(TRIM(BOTH '*' FROM t.CountryName), 'Cansda', 'Canada') AS CountryName,
	COUNT(c.CustomerKey) AS Customers
FROM SalesTerritory AS t
	JOIN Customer AS c
	ON t.GeographyKey = c.GeographyKey
GROUP BY LTRIM(t.CountryCode), t.CountryName;

-- Other operations on text data
SELECT
	FirstName + ' ' + LastName AS FullName,
	CONCAT(FirstName, ' ', LastName) AS FullNameConcat,
	CONCAT_WS(' ', FirstName, LastName) AS FullNameConcatWS,
	LEFT(LastName, 1) AS Initial,
	RIGHT(LastName, 1) AS LastLetter,
	SUBSTRING(LastName, 3, 2) AS Subset
FROM Customer
--WHERE FirstName LIKE 'Sam%'
--WHERE PATINDEX('Sam%', FirstName) > 0 AND PATINDEX('R_s%', LastName) > 0
WHERE PATINDEX('Sam%', FirstName) > 0 AND PATINDEX('[wy]%', LastName) > 0;