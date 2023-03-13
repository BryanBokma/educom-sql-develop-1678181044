-- SQL EXISTS Operator

-- The EXISTS operator is used to test for the existence of any record in a subquery
-- The EXISTS operator returns TRUE if the subquery returns one or more records

-- EXISTS Syntax
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

-- SQL EXISTS Examples (returns TRUE and lists the suppliers with a product price less than 20)
SELECT SupplierName
FROM suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

-- Example 2 (returns TRUE and lists the suppliers with a product price equal to 22)
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Product WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);