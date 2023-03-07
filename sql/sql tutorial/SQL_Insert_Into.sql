-- INSERT INTO statement is used to insert new record in a table

-- INSERT INTO Syntax

-- Het is mogelijk om INSERT INTO op twee manieren te beschrijven 
-- 1. Specify both the column names and the values to be inserted
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

-- 2. If you are adding values for all the columns of the table, 
-- you do not need to specify the column names in the SQL query. 
-- However, make sure the order of the values is in the same order as the columns in the table. 
-- Here, the INSERT INTO syntax would be as follows:
INSERT INTO table_name
VALUES (value1, value2, value3);

-- INSERT INTO Example (hierbij voeg je een new record toe aan de Customers tabel)
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Insert data only in specified columns 
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

-- Exercise
INSERT INTO Customers (CustomerName, Address, City, PostalCode, Country)
VALUES ('Hekkan Burger', 'Gateveien 15', 'Sandnes', '4306', 'Norway');