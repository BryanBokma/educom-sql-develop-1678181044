SELECT City, CompanyName, ContactName
FROM customers 
WHERE City LIKE '%L%'
ORDER BY ContactName;