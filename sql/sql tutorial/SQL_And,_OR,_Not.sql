-- The WHERE clause can be combined with AND, OR and NOT operators 
-- The AND and OR operators are used to filter records based on more than one condition:

-- The AND operator displays a record if all the conditions separated by AND are TRUE.
-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
-- The NOT operator displays a record if the condition(s) is NOT TRUE.

-- AND Syntax
SELECT column FROM table_name WHERE condition1 AND condition2 AND condition3;

-- OR Syntax 
SELECT column FROM table_name WHERE condition1 OR condition2 OR condition3;

-- NOT Syntax
SELECT column FROM table_name WHERE NOT condition;

-- AND example (hierbij zoekt hij het record Germany in Country die Berlin als City hebben)
SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';

-- OR Example (hierbij alle columns pakken van Customers waarbij de City Berlin OR Munchen is)
SELECT * FROM Customers WHERE City='Berlin' OR City='Munchen';

-- Example 2 (Hierbij alles selecteren van Customers waarbij de Country Germany OR Spain is)
SELECT * FROM Customers WHERE Country='Germany' OR Country='Spain';

-- NOT Example (hierbij alles selecteren van Customers waar Country NOT Germany is)
SELECT * FROM Customers WHERE NOT Country='Germany';

-- Combining AND, OR and NOT

--Example 1 (hierbij alles selecteren van de Customers tabel waarbij Country Germany is en de City Berlin OR Munchen)
SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='Munchen');

-- Example 2 (Hierbij alles selecteren van de Customers tabel waarbij je de waardes die Country Germany en USA bevatten niet wilt hebben)
SELECT * FROM Customers WHERE NOT Country='Germany' AND NOT Country='USA';

-- Exercise
SELECT * FROM Customers WHERE City='Berlin' AND PostalCode='12209';

