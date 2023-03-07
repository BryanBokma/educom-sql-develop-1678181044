-- A field with a NULL value is a field with no value

-- If a field in a table is optional, it is possible to insert a new record ord update a record without
-- adding a value to this field. Then, the field will be saved with a NULL value

-- Note: A NULL value is different from a zero value or a field that contains spaces. A field with a NULL
-- value is one that has been left black during record creation

-- How to test for NULL values?
-- It is not possible to test for NULL values with comparison operators, such as =,< or <>
-- We will have to use the IS NULL and IS NOT NULL operators instead 

-- IS NULL Syntax
SELECT column_names FROM table_name WHERE column_name IS NULL;

-- IS NOT NULL Syntax
SELECT column_names FROM table_name WHERE column_name IS NOT NULL;

-- The IS NULL OPERATOR (word gebruikt om te kijken of er lege values zijn oftewel NULL values)
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NULL;
-- Gebruik altijd IS NULL om te zoeken naar NULL values

-- IS NOT NULL Operator (word gebruikt om te zoeken naar geen lege values, NOT NULL values)
SELECT CustomerName, ContactName, Address FROM Customers WHERE Address IS NOT NULL;

-- Exercise
SELECT * FROM Customers WHERE PostalCode IS NULL;