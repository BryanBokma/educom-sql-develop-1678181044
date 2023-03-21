SELECT e1.EmployeeID, e1.LastName, e1.FirstName, CONCAT(e2.FirstName, " ", e2.LastName) AS ReportsTo
FROM employees AS e1, employees AS e2
WHERE e1.ReportsTo = e2.EmployeeID
ORDER BY EmployeeID;