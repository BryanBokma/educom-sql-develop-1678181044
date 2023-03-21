SELECT CompanyName, ContactName, Fax
FROM customers
WHERE Fax IS NULL
ORDER BY ContactName;