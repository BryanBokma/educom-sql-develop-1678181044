SELECT o.Quantity AS 'numbers of orders since December 31, 1944', c.CompanyName
FROM order_details AS o, customers AS c
WHERE Quantity>10;