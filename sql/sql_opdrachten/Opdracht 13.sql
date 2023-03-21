SELECT City, CompanyName, ContactName
FROM customers
WHERE City LIKE 'A%'
OR City LIKE 'B%';