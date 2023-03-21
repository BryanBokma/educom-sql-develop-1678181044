SELECT ContactName, ContactTitle, CompanyName
FROM customers
WHERE NOT ContactTitle LIKE '%Sales%';