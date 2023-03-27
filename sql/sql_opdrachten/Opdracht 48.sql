SELECT LastName, FirstName, Title, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), BirthDate)), '%Y') + 0 AS Age
FROM employees;