-- SQL Comments
-- Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.

-- Note: The examples in this chapter will not work in Firefox and Microsoft Edge!

-- Single Line Comments
-- Single line comments start with --.
-- Any text between -- and the end of the line will be ignored (will not be executed).

-- The following example uses a single-line comment as an explanation
--Select all:
SELECT * FROM Customers;

-- Example 2 (The following example uses a single-line comment to ignore the end of a line)
SELECT * FROM Customers -- WHERE City='Berlin';

-- Example 3 (The following example uses a single-line comment to ignore a statement)
--SELECT * FROM Customers;
SELECT * FROM Products;

-- Multi-line Comments
-- Multi-line comments start with /* and end with */.
-- Any text between /* and */ will be ignored.
-- The following example uses a multi-line comment as an explanation
/*Select all the columns
of all the records
in the Customers table:*/
SELECT * FROM Customers;

-- Example 2 (uses a multi-line comment to ignore many statements)
/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT * FROM Suppliers;

-- To ignore just a part of a statement, also use the /* */ comment.

-- Example 3 (The following example uses a comment to ignore part of a line)
SELECT CustomerName, /*City,*/ Country FROM Customers;

-- Example 4 (The following example uses a comment to ignore part of a statement)
SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;