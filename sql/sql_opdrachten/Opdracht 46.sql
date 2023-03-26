SELECT p.CategoryID, c.CompanyName, p.ProductName
FROM products AS p, customers AS c
WHERE CategoryID='5';