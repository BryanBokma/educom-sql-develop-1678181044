-- Update statement word gebruikt om bestaande records aan te passen in een tabel

-- Update Syntax
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
-- Note:Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. 
-- The WHERE clause specifies which record(s) that should be updated. 
-- If you omit the WHERE clause, all records in the table will be updated!

-- Update table
UPDATE Customers 
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1;

-- UPDATE multiple records
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- UPDATE Warning: Be careful when updating record. If you omit the WHERE clause, ALL records will be updated
UPDATE Customers
SET ContactName='Juan';

-- Exercise 
UPDATE Customers
SET City='Oslo'
