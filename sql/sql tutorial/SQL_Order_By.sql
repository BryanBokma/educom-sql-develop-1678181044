-- The ORDER BY keyword is used to sort the result-set in ascending or descending order
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword

-- ORDER By Syntax
SELECT column FROM table_name ORDER BY column ASC|DESC;

-- ORDER By Example (hierbij selecteer je alles van de tabel Customers, gesorteerd op de Country column)
SELECT * FROM Customers ORDER BY Country;

-- ORDER BY DESC Example 
SELECT * FROM Customers ORDER BY Country DESC;

-- ORDER BY Several columns example 1 (hierbij selecteer je alles van de tabel Customers, hij sorteerd op Country en als sommige rows dezelfde country hebben orderd hij hem op CustomerName)
SELECT * FROM Customers ORDER BY Country, CustomerName;

-- ORDER BY Several columns example 2
-- Hierbij selecteer je alles van de tabel Customers gesorteerd ascending op Country and descending op de CustomerName
SELECT * FROM Customers ORDER BY Country ASC, CustomerName DESC;

-- Exercise
SELECT * FROM Customers ORDER BY City;