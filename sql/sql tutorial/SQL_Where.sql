-- WHERE clause is used to filter records
-- It is used to extract only those records that fulfill a specified condition

-- WHERE Syntax
SELECT ContactName, City FROM Customers WHERE City='Berlin';
-- The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc!

-- WHERE Clause example
SELECT * FROM Customers WHERE Country='Mexico';

-- Text Fields vs Numeric Fields
SELECT * FROM Customers WHERE CustomerID=1;

-- De volgende operators kun je gebruiken in de WHERE clause 
= Equal
> Greater than
< Less than
>= Greater than or equal
<= Less than or equal
<> Not equal Note: In some versions of SQL this operator may be written as !=
BETWEEN Between a certain range
LIKE Search for a pattern
IN TO specify multiple possible values for a column

-- Exercise
SELECT * FROM Customers WHERE City='Berlin';
