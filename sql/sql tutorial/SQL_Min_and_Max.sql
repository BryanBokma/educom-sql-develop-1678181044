-- The SQL MIN() and MAX() Functions
The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.

-- MIN() Syntax
Select MIN(column_name)
FROM table_name
WHERE condition;

-- MAX() Syntax
SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- MIN() Example (dit vind de prijs van het goedkoopste product)
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- MAX() Example (dit vind de prijs van het duurste product)
SELECT MAX(Price) AS LargestPrice
FROM Products;

-- Exercise
SELECT MIN(Price)
FROM Products;