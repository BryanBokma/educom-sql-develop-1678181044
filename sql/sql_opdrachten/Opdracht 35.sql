SELECT a.UnitPrice, a.Quantity, a.Discount, b.OrderID, c.ContactName, ROUND(a.UnitPrice * a.Quantity * a.Discount, 2) AS Discount_Purchase
FROM order_details AS a, orders AS b, customers AS c
WHERE a.OrderId = b.OrderID AND b.CustomerID = c.CustomerID;