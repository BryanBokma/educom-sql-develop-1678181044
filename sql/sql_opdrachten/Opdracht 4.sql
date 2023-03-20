SELECT OrderID, OrderDate, CustomerID, ShippedDate, Freight
FROM orders
ORDER BY Freight DESC
LIMIT 10;