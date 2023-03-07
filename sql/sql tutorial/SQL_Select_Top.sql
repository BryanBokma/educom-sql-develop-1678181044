-- SQL SELECT TOP Clause 

-- SELECT TOP clause is used to specify the number of records in return

-- SELECT TOP clause is useful on large tables with thousands of records. 
-- Returning a large number of records can impact performance

-- Note: Not all database systems support the SELECT TOP clause. 
-- MySQL supports the LIMIT clause to select a limited number of records, 
-- while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

-- SQL Server/MS Accesss Syntax
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

-- MySQL Syntax
SELECT column_name(s)
FROM table_name
WHERE condition 
LIMIT number;

-- Oracle 12 Syntax
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

-- Older Oracle Syntax
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

-- Older oracle syntax (with ORDER BY)
SELECT *
FROM (SELECT column_names(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

-- SQL TOP, LIMIT and FETCH FIRST Examples

-- Example 1
SELECT TOP 3 * FROM Customers;

-- Example 2
SELECT * FROM Customers
LIMIT 3;

-- Example 3
SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;