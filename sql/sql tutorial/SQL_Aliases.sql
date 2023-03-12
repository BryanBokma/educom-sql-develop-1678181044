-- SQL Aliases 

-- SQL aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

-- Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

-- Alias table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;

-- Alias for Columns Examples (creates two aliases, one for CustomerID column and one for the CustomerName column)
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Example 2 (creates two aliases, one for the CustomerName column and one for the ContactName column)
-- Note: It requires double quotation marks or square brackets if the alias name contains spaces
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

-- Example 3 (creates an alias named Address that combine four columns (Address, PostalCode, City and Country))
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

-- Note: To get the SQL statement above to work in MySQL use the following
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

-- Note: To get the SQL statement above to work in Oracle use the following
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

-- Alias for tables example (selects all orders from customer with CustomerID=4 (Around the Horn))
-- We use the Customers and Orders tables and give them table aliases of c and o respectively (Here we use aliases to make the SQL shorter)
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS of
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- Example 2 (The following SQL statement is the same as above, but without aliases)
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

-- Aliases can be useful when:

-- There are more than one table involved in a query
-- Functions are used in the query
-- Column names are big or not very readable
-- Two or more columns are combined together

-- Exercise
SELECT CustomerName, Address, PostalCode AS Pno
FROM Customers;