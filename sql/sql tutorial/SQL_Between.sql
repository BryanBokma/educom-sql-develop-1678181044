-- The SQL Between Operator

-- The BETWEEN operator selects values within a given range. 
-- The values can be numbers, text, or dates.

-- The BETWEEN operator is inclusive: begin and end values are included.

-- Between Syntax
SELECT columns_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- Between Example (selects all products with a price between 10 and 20)
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

-- NOT BETWEEN Example (To display the products outside the range of the previous example, use NOT BETWEEN)
SELECT * FROM Products 
WHERE Price NOT BETWEEN 10 AND 20;

-- Between with IN Example (select all products with a price between 10 and 20. In addition do not show products with a CategoryID of 1,2 or 3)
SELECT * FROM Products
WHERE Price BETWEEN10 AND 20
AND CategoryID NOT IN (1,2,3);

-- Between text values example (select all products with a ProductName between Carnarvon Tigers and Mozzarella di Giovanni)
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnavon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Example 2 (select all products with a ProductName between Carnavon Tigers and Chef Anton's Cajun Seasoning)
SELECT * FROM Products
WHERE ProductName BETWEEN "Carnavon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;

-- NOT BETWEEN text values example (select all products with a ProductName not between Carnarvon Tigers and Mozzarella di Giovanni)
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnavon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- BETWEEN Dates Example (selects all orders with an OrderDate between 01-July-1996 and 31-July-1996)
SELECT * FROM Orders 
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

-- or

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- Exercise
SELECT * FROM Products 
WHERE Price BETWEEN 10 AND 20;