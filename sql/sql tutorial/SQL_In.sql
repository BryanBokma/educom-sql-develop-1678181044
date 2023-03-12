-- The SQL IN operator

-- The IN operator allows you to specify multiple values 
-- in a WHERE clause.

-- The IN operator is a shorthand for multiple OR conditions.

-- IN Syntax
SELECT comlumn_name(s)
FROM table_name
WHERE column_name IN (value1, value2);

-- or

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

-- IN Operator examples (select all customers that are located in Germany, France or UK)
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- Example 2 (select all customers that are NOT located in Germany, France or UK)
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- Example 3 (select all customers that are from the same countries as the suplliers)
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

-- Exercise 
SELECT * FROM Customers
WHERE Country IN ('Norway', 'France');