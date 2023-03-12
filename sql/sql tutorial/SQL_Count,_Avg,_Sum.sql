-- The SQL COUNT(), AVG() and SUM() Functions
-- The COUNT() function returns the number of rows that matches a specified criterion.

-- COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

-- AVG() Syntax (The AVG() function returns the average value of a numeric column)
SELECT AVG(column_name)
FROM table_name
WHERE condition;

-- SUM() Syntax (The SUM() function returns the total sum of a numeric value)
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- COUNT() Example (The following SQL statement finds the number of products)
SELECT COUNT(ProductID)
FROM Products;
-- Note: NULL values are not counted.

-- AVG() Example (The following SQL statement finds the average price of all products)
SELECT AVG(Price)
FROM Products;
-- Note: NULL values are ignored.

-- SUM() Example (The following SQL statement finds the sum of the "Quantity" fields in the "OrderDetails" table)
SELECT SUM(Quantity)
FROM OrderDetails;
-- Note: NULL values are ignored.

-- Exercise
SELECT COUNT(*) 
FROM Products
WHERE Price = 18; 