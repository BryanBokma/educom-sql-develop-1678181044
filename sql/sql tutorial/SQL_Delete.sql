-- The DELETE statement is used to delete excisting records in a table

-- DELETE Syntax
DELETE FROM table_name WHERE condition;
-- Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
-- The WHERE clause specifies which record(s) should be deleted. 
-- If you omit the WHERE clause, all records in the table will be deleted!

-- SQL DELETE Example
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- DELETE ALL Record (It is possible to delete all rows in a table without deleting the table. 
-- This means that the table structure, attributes, and indexes will be intact)
DELETE FROM table_name;

-- Example, The following SQL statement deletes all rows in the "Customers" table, without deleting the table
DELETE FROM Customers;

-- Exercise
DELETE FROM Customers WHERE Country='Norway';
