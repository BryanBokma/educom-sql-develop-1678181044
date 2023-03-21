SELECT ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel
FROM products
WHERE NOT ReorderLevel=0;