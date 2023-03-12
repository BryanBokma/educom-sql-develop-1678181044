-- SQL Wildcards characters 

-- A wildcard character is used to substitute one or more characters in a string.

-- Wildcard characters are used with the LIKE operator. 
-- The LIKE operator is used in a WHERE clause to search for a specified 
-- pattern in a column

-- Wildcard characters in MS Access
*	Represents zero or more characters	                        bl* finds bl, black, blue, and blob
?	Represents a single character	                            h?t finds hot, hat, and hit
[]	Represents any single character within the brackets	        h[oa]t finds hot and hat, but not hit
!	Represents any character not in the brackets	            h[!oa]t finds hit, but not hot and hat
-	Represents any single character within the specified range	c[a-b]t finds cat and cbt
#	Represents any single numeric character	                    2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295

-- Wildcard characters in SQL Server
%	Represents zero or more characters	                          bl% finds bl, black, blue, and blob
_	Represents a single character	                              h_t finds hot, hat, and hit
[]	Represents any single character within the brackets	          h[oa]t finds hot and hat, but not hit
^	Represents any character not in the brackets	              h[^oa]t finds hit, but not hot and hat
-	Represents any single character within the specified range	  c[a-b]t finds cat and c
-- All the wildcards can also be used in combinations!

-- Here are some examples showing different LIKE operators with '%' and '_' wildcards
WHERE CustomerName LIKE 'a%'	Finds any values that starts with "a"
WHERE CustomerName LIKE '%a'	Finds any values that ends with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a__%'	Finds any values that starts with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that starts with "a" and ends with "o"

-- Using the % Wildcard (selects all customers with a City starting with a character, followed by ondon)
SELECT * FROM Customers 
WHERE City LIKE '_ondon';

-- Example 2 (select all Customers with a City starting with L, followed by any character followed by n, followed by any character, followed by on)
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

-- Using the [charlist] Wildcard (selects all customers with a City starting with b, s or p)
Select * FROM Customers
WHERE City LIKE '[bsp]%';

-- Example 2 (selects all customers with a City starting with a, b or c)
SELECT * FROM Customers 
WHERE City LIKE '[a-c]%';

-- Using the [!charlist] Wildcard (the two following SQL statments selects all customers with a City NOT starting with b, s or p)
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';

-- Example 2
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

-- Exercise
SELECT * FROM Customers
WHERE City LIKE '_a%'