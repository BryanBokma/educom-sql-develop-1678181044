SELECT products.SupplierID, products.ProductName, products.UnitPrice
FROM products
RIGHT JOIN suppliers ON products.UnitPrice = suppliers.CompanyName
RIGHT JOIN categories ON suppliers.CompanyName = categories.CategoryName;
