-- Selecting specific columns
SELECT FirstName, LastName, Education, Occupation
FROM Customer;

-- Selecting all columns
SELECT *
FROM Customer;

-- Aliasing
SELECT FirstName + ' ' + LastName AS FullName, Occupation
FROM Customer;

-- Selecting 50% of records
SELECT TOP 50 PERCENT FirstName + ' ' + LastName AS FullName, Occupation
FROM Customer;

-- Selecting 10 records
SELECT TOP 10 FirstName + ' ' + LastName AS FullName, Occupation
FROM Customer;

-- Selecting distinct values
SELECT DISTINCT Occupation
FROM Customer;