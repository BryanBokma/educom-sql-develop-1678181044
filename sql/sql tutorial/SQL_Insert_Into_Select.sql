-- SQL INSERT INTO SELECT Statement
-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.
-- The INSERT INTO SELECT statement requires that the data types in source and target tables match.

-- Note: The existing records in the target table are unaffected

-- INSERT INTO SELECT Syntax (Copy all columns from one table to another table)
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

-- Copy only some columns from one table into another table
INSERT INTO table2 (column1, column2, column3)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

-- SQL INSERT INTO SELECT Examples (copies "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL)
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

-- Example 2 (copies "Suppliers" into "Customers" (fill all columns))
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

-- Example 3 (copies only the German suppliers into Customers)
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';