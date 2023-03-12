-- SQL LIKE Operator

-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column
-- There are two wildcards often used in conjuction with the LIKE operator

-- The (%) sign represents zero, one or multiple characters
-- The (_) sign represents one single character
-- The percent sign and the underscore can also be used in combinations!

-- Note: MS Access uses an asterisk (*) instead of the percent sign (%), 
-- and a question mark (?) instead of the underscore (_).

-- LIKE Syntax
SELECT column1, column2
FROM table_name
WHERE column LIKE pattern;
-- Tip: You can also combine any number of conditions using 
-- AND or OR operators.

WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"

-- SQL LIKE Examples (Selects all customers with a CustomerName starting with a)
SELECT * FROM customers
WHERE CutsomerName LIKE 'a%';

-- Example 2 (selects all Customers with a CustomerName ending with a)
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- Example 3 (selects all customers with a CustomerName that have or in any position)
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';

-- Example 4 (selects all customers with a CustomerName that have r in the second position)
SELECT * FROM Customers 
WHERE CustomerName LIKE '_r%';

-- Example 5 (selects all customers with a CustomerName that starts with a and are at least 3 characters in length)
SELECT * FROM Customers
WHERE CustomerName LIKE 'a_%';

-- Example 6 (selects a;; customers with a ContactName that starts with a and ends with o)
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

-- Example 7 (selects all customers with a CustomerName that does NOT start with a)
SELECT * FROM Customers 
WHERE CustomerName NOT LIKE 'a%';

-- Exercise 
SELECT * FROM Customers
WHERE City LIKE 'a%';