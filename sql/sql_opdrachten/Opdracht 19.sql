SELECT OrderID
FROM orders
WHERE MOD(OrderID, 2) = 1;