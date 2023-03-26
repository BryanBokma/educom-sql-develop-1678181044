SELECT o.Quantity, c.CompanyName
FROM order_details AS o, customers AS c
WHERE Quantity>10;