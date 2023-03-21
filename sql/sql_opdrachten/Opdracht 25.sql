SELECT SupplierID, CompanyName
FROM suppliers
WHERE CompanyName='Exotic Liquids' OR CompanyName='Specialty Biscuits, Ltd.' OR CompanyName='Escargots Nouveaux'
ORDER BY SupplierID;