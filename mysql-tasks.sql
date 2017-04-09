-- My solutions to MySQL tasks on the Northwind database, completed as part of a Databases course at university.

-- 01. List all products.
-- 02. List product name, category and price
-- 03. List product package sizes
-- 04. List product package sizes, remove duplicates from the list.
-- 05. Find the value of each product in warehouse, price * amount in store.
-- 06. Rename the calculated attribute as stockvalue.
-- 07. Find products that are sold in bottles.
-- 08. Find names of those products, which we have over 100 units in warehouse.
-- 09. Find names and unit prices of those products, which have unit price higher than 50. Order the Find in alphabetical order by product name.
-- 10. Find names of employees working in London.
-- 11. Find names of employees working somewhere else than London.
-- 12. Find address information of customers living in Rio de Janeiro or in México D.F. in postal code area (05020-05030).
-- 13. Find address information of customers living in México D.F. in some other postal code area than (05020-05030).
-- 14. Find orders, which have not been shipped yet ie. there is no shipped date.
-- 15. Find names of employees having superior. The list should be in ascending order by employee's lastname.
-- 16. Find suppliers not having region information.
-- 17. Find suppliers having region information. Show the area information on the Find also.
-- 18. Find orders made in 1996. Order the list by month of orderdate. Show ordernumber, customer id and month number of orderdate.
-- 19. Find names of employees, who were hired in 1992.
-- 20. Find products names and prices. The list should be in descending order by product name.
-- 21. Find names and post areas of employees. The list should be in descending order by post area and in ascending order by employee name.
-- 22. Find names of companies in ascending order. The list should include both supplier names and customer names!
-- 23. Find names of companies in ascending order. The list should include both supplier names and customer names. There should also be information whether this company is supplier or customer.
-- 24. Find names and contact information of all people in database. Produce a list where is
-- 25. Find out how much would value of order 10288 raise, if you raise original unit price with 5 € and at the same time you raise original unit price +5 %.
-- 26. Find the product having highest unit price.
-- 27. Find the product having lowest unit price.
-- 28. Find the average unit price and the count of products.
-- 29. Find the count of products having unit price over 50 €.
-- 30. Find post areas from where we have customers. Every post area should be only once in the list.
-- 31. Find the count of different post areas we have customers from.
-- 32. Find the names and addresses of suppliers that sell products in bottles.
-- 33. Find the number of products in every product category. The list should have two columns: category name and count of products in this category.
-- 34. Find average, maximum and minimum of quantities in order details for every product. The list should be in descending order by average values.
-- 35. Like previous, but only for products ordered at least in 50 orders.
-- 36. Like previous, but only for Beverages catagory.
-- 37. Find name of customer, orderid and orderdate for orders 10600 - 10620.
-- 38. Find the number of products ordered in every order having shipcountry France. List should have two columns: orderid and quantity of products. The list should also be in decending order by quantity of products.
-- 39. Find the orders handled by employee Robert King. List should include columns orderid and customer's name. The list should be in ascending order by names of customers.
-- 40. How many different customers Robert King has managed by handling orders?
-- 41. Find the customers whose orders Robert King has managed at least three times.
-- 42. Find the suppliers of every product. The list should have two columns: Supplier name and Product name. The list should also be in ascending order by supplier name.
-- 43. Find the suppliers of every product in Beverages category. The list should have two columns: Supplier name and Product name. The list should also be in ascending order by supplier name.
-- 44. Find names and ages of employees. Calculate the age approximately by substracting year of birth and current year. Name the employee age columns to age.
-- 45. Calculate the employees exact age.
-- 46. Suppose that we would have added 25 € to every order as billing costs. How much would every customer then have been paid to us as billing costs?
-- 47. Find names of employees and their subordinates.
-- 48. Find names of employees and their subordinates. Show also employees that don't have subordinate.
-- 49. Find products having quantity in stock less than their reorderlevel.
-- 50. Find orders shipped next day after order date.
-- 51. Find customers, who have ordered Lakkalikööriä. Customer should be on the list only once.
-- 52. How many different customers have orded products supplied by Bigfoot Breweries?
-- 53. Find all finnish, swedish and norwegian suppliers and customers. The list should be in ascending order by country.
-- 54. Find employees having started later than every London employees.
-- 55. Find employees having started later than some London employee.
-- 56. Find post area where we have both employees and customers.
-- 57. Find post area where we have employees but not customers.
-- 58. Add your information to Employees table. Check first how data is represented in this table. You don't have phone number at work (Extension).
-- 59. Add new order and put yourself as employee. You don't know the shipped day!
-- 60. Add two rows in orderdetails fro the previous order. They do not have any discount.
-- 61. The shipped day for Order in exercise 59 is tomorrow. Update the information!
-- 62. You finally got a work phone: the extension is 4455.
-- 63. Add your information to Customers-table using Select-form of Insert-sentence. Leave those fields empty, which you don't get from Employees-table.
-- 64. Raise prices of products in Beverages category with 2 %.
-- 65. Remove the order and orderlines you made earlier.
-- 66. Change your title to Chief Executive and country to Cayman-Islands.
-- 67. Put yourself as boss for two employees without knowing your employeeid.
-- 68. Create new table called Players. There are three columns: id, name and other_information. Id is number, name and other_informatio are both strings. Check that table exists.
-- 69. Define Id-column as primary key in the Players-table.
-- 70. Add new column Salary to Players. Salary can be anything between 0 to 50000 (= There is also check constraint called Salary_ck).
-- 71. Create new table called Teams. There are two columns: team_id and teamname. Both field are mandatory.
-- 72. Add new column Team to Players. This column is foreign key to Teams-table referencing to team_id. What you have to do before you succeed?
-- 73. Remove column other_information from Players-table.
-- 74. Create view Team_players. The view has columns teamname and playername.
-- 75. Add new column LeagueLevel to Teams. Default value for the column is 'Premier'.
-- 76. Create view PremierLeagueTeams, which shows only teams in Premier-league.
-- 77. Remove Team table. What else do you have to do?
-- 78. Find names of territory managers in each region, also include the territory name and the description of the region they work in.
-- 79. How many managers are there in each region?
-- 80. Find products which have reorderlevel 10, 25 or 30.
-- 81. How many product categories there are?
-- 82. List supplier names in order of value of products we have in stock, include the stock value for each.

-- 01. List all products.
SELECT * FROM products; 
+-----------+----------------------------------+------------+------------+----------------------+-----------+--------------+--------------+--------------+--------------+
| ProductID | ProductName                      | SupplierID | CategoryID | QuantityPerUnit      | UnitPrice | UnitsInStock | UnitsOnOrder | ReorderLevel | Discontinued |
+-----------+----------------------------------+------------+------------+----------------------+-----------+--------------+--------------+--------------+--------------+
|         1 | Chai                             |          1 |          1 | 10 boxes x 20 bags   |   18.3600 |           39 |            0 |           10 |            0 |
|         2 | Chang                            |          1 |          1 | 24 - 12 oz bottles   |   19.3800 |           17 |           40 |           25 |            0 |
|         3 | Aniseed Syrup                    |          1 |          2 | 12 - 550 ml bottles  |   10.0000 |           13 |           70 |           25 |            0 |


-- 02. List product name, category and price
SELECT productname, categoryid, unitprice FROM products; 
+----------------------------------+------------+-----------+
| productname                      | categoryid | unitprice |
+----------------------------------+------------+-----------+
| Chai                             |          1 |   18.3600 |
| Chang                            |          1 |   19.3800 |
| Aniseed Syrup                    |          2 |   10.0000 |


-- 03. List product package sizes
+----------------------+
| quantityperunit      |
+----------------------+
| 10 boxes x 20 bags   |
| 24 - 12 oz bottles   |
| 12 - 550 ml bottles  |


-- 04. List product package sizes, remove duplicates from the list.
SELECT DISTINCT quantityperunit FROM products; 
| quantityperunit      |
+----------------------+
| 10 boxes x 20 bags   |
| 24 - 12 oz bottles   |
| 12 - 550 ml bottles  |


-- 05. Find the value of each product in warehouse, price * amount in store.
SELECT productname, unitprice*unitsinstock FROM products; 
+----------------------------------+------------------------+
| productname                      | unitprice*unitsinstock |
+----------------------------------+------------------------+
| Chai                             |               716.0400 |
| Chang                            |               329.4600 |
| Aniseed Syrup                    |               130.0000 |


-- 06. Rename the calculated attribute as stockvalue.
SELECT productname, unitprice*unitsinstock AS stockvalue 
FROM products;
+----------------------------------+------------+
| productname                      | stockvalue |
+----------------------------------+------------+
| Chai                             |   716.0400 |
| Chang                            |   329.4600 |
| Aniseed Syrup                    |   130.0000 |


-- 07. Find products that are sold in bottles.
SELECT productname, quantityperunit 
FROM products 
WHERE quantityperunit LIKE '%bottle%'; 
+----------------------------------+---------------------+
| productname                      | quantityperunit     |
+----------------------------------+---------------------+
| Chang                            | 24 - 12 oz bottles  |
| Aniseed Syrup                    | 12 - 550 ml bottles |
| Genen Shouyu                     | 24 - 250 ml bottles |


-- 08. Find names of those products, which we have over 100 units in warehouse.
SELECT productname, unitsinstock 
FROM products 
WHERE unitsinstock > 100; 
+------------------------------+--------------+
| productname                  | unitsinstock |
+------------------------------+--------------+
| Grandma''s Boysenberry Spread|          120 |
| Gustaf''s Knäckebröd         |          104 |
| Geitost                      |          112 |


-- 09. Find names and unit prices of those products, which have unit price higher than 50. Order the Find in alphabetical order by product name.
SELECT productname, unitprice 
FROM products 
WHERE unitprice > 50 
ORDER BY productname;
+-------------------------+-----------+
| productname             | unitprice |
+-------------------------+-----------+
| Carnarvon Tigers        |   62.5000 |
| Côte de Blaye           |  268.7700 |
| Manjimup Dried Apples   |   53.0000 |


-- 10. Find names of employees working in London.
SELECT firstname, lastname 
FROM employees 
WHERE city = 'London'; 
+-----------+-----------+
| firstname | lastname  |
+-----------+-----------+
| Steven    | Buchanan  |
| Michael   | Suyama    |
| Robert    | King      |


-- 11. Find names of employees working somewhere else than London.
SELECT firstname, lastname, city 
FROM employees 
WHERE city != 'London'; 
+-----------+-----------+----------+
| firstname | lastname  | city     |
+-----------+-----------+----------+
| Nancy     | Davolio   | Seattle  |
| Andrew    | Fuller    | Tacoma   |
| Janet     | Leverling | Kirkland |


-- 12. Find address information of customers living in Rio de Janeiro or in México D.F. in postal code area (05020-05030).
SELECT contacttitle, contactname, address, city, postalcode 
FROM customers 
WHERE city = 'México D.F.' 
OR 
(city = 'Rio de Janeiro' && postalcode >= 05020 && postalcode <= 05030); 
+----------------------+----------------------+-------------------------------+-------------+------------+
| contacttitle         | contactname          | address                       | city        | postalcode |
+----------------------+----------------------+-------------------------------+-------------+------------+
| Owner                | Ana Trujillo         | Avda. de la Constitución 2222 | México D.F. | 05021      |
| Owner                | Antonio Moreno       | Mataderos  2312               | México D.F. | 05023      |
| Marketing Manager    | Francisco Chang      | Sierras de Granada 9993       | México D.F. | 05022      |


-- 13. Find address information of customers living in México D.F. in some other postal code area than (05020-05030).
SELECT contacttitle, contactname, address, city, postalcode 
FROM customers 
WHERE city = 'México D.F.' AND postalcode NOT BETWEEN 05020 AND 05030; 
+----------------------+----------------------+--------------------------+-------------+------------+
| contacttitle         | contactname          | address                  | city        | postalcode |
+----------------------+----------------------+--------------------------+-------------+------------+
| Sales Representative | Guillermo Fernández  | Calle Dr. Jorge Cash 321 | México D.F. | 05033      |
| Owner                | Miguel Angel Paolino | Avda. Azteca 123         | México D.F. | 05033      |
+----------------------+----------------------+--------------------------+-------------+------------+


-- 14. Find orders, which have not been shipped yet ie. there is no shipped date.
SELECT OrderID, OrderDate, RequiredDate, EmployeeID FROM Orders 
WHERE ShippedDate IS NULL; 
+---------+---------------------+---------------------+------------+
| OrderID | OrderDate           | RequiredDate        | EmployeeID |
+---------+---------------------+---------------------+------------+
|   11008 | 1996-05-08 00:00:00 | 1996-06-05 00:00:00 |          7 |
|   11019 | 1996-05-13 00:00:00 | 1996-06-10 00:00:00 |          6 |
|   11039 | 1996-05-21 00:00:00 | 1996-06-18 00:00:00 |          1 |


-- 15. Find names of employees having superior. The list should be in ascending order by employee's lastname.
SELECT lastname, firstname FROM employees 
WHERE reportsto IS NOT NULL 
ORDER BY lastname; 
+-----------+-----------+
| lastname  | firstname |
+-----------+-----------+
| Buchanan  | Steven    |
| Callahan  | Laura     |
| Davolio   | Nancy     |


-- 16. Find suppliers not having region information.
SELECT companyname, contactname FROM suppliers 
WHERE region IS NULL; 
+----------------------------------------+------------------+
| companyname                            | contactname      |
+----------------------------------------+------------------+
| Exotic Liquids                         | Charlotte Cooper |
| Tokyo Traders                          | Yoshi Nagase     |
| Mayumi''s                              | Mayumi Ohno      |


-- 17. Find suppliers having region information. Show the area information on the Find also.
SELECT companyname, contactname, region FROM suppliers 
WHERE region IS NOT NULL; 
+------------------------------------+-----------------------------+----------+
| companyname                        | contactname                 | region   |
+------------------------------------+-----------------------------+----------+
| New Orleans Cajun Delights         | Shelley Burke               | LA       |
| Grandma Kelly''s Homestead         | Regina Murphy               | MI       |
| Cooperativa de Quesos 'Las Cabras' | Antonio del Valle Saavedra  | Asturias |

-- 18. Find orders made in 1996. Order the list by month of orderdate. Show ordernumber, customer id and month number of orderdate.
SELECT orderid, customerid, month(orderdate) FROM orders 
WHERE year(orderdate) = 1996 
ORDER BY month(orderdate); 
+---------+------------+------------------+
| orderid | customerid | month(orderdate) |
+---------+------------+------------------+
|   10760 | MAISD      |                1 |
|   10761 | RATTC      |                1 |
|   10762 | FOLKO      |                1 |


-- 19. Find names of employees, who were hired in 1992.
SELECT CONCAT(firstname, " ", lastname) AS 'Name' FROM employees 
WHERE year(hiredate) = 1992 
ORDER BY lastname; 
+-----------------+
| Name            |
+-----------------+
| Nancy Davolio   |
| Andrew Fuller   |
| Janet Leverling |


-- 20. Find products names and prices. The list should be in descending order by product name.
SELECT productname, unitprice FROM products 
ORDER BY productname desc; 
+----------------------------------+-----------+
| productname                      | unitprice |
+----------------------------------+-----------+
| Zaanse koeken                    |    9.5000 |
| Wimmers gute Semmelknödel        |   33.2500 |
| Vegie-spread                     |   43.9000 |


-- 21. Find names and post areas of employees. The list should be in descending order by post area and in ascending order by employee name.
SELECT CONCAT (firstname, " ", lastname) AS 'Name', postalcode FROM employees 
ORDER BY postalcode desc, name; 
+------------------+------------+
| Name             | postalcode |
+------------------+------------+
| Anne Dodsworth   | WG2 7LT    |
| Steven Buchanan  | SW1 8JR    |
| Robert King      | RG1 9SP    |


-- 22. Find names of companies in ascending order. The list should include both supplier names and customer names!
SELECT companyname FROM suppliers 
UNION 
SELECT companyname FROM customers 
ORDER BY companyname; 
+----------------------------------------+
| companyname                            |
+----------------------------------------+
| Alfreds Futterkiste                    |
| Ana Trujillo Emparedados y helados     |
| Antonio Moreno Taquería                |


-- 23. Find names of companies in ascending order. The list should include both supplier names and customer names. There should also be information whether this company is supplier or customer.
SELECT CONCAT(companyname, " Supplier") AS "Company" FROM suppliers 
UNION 
SELECT CONCAT(companyname, " Customer") AS "Company" FROM customers 
ORDER BY Company; 
+-------------------------------------------------+
| Company                                         |
+-------------------------------------------------+
| Alfreds Futterkiste Customer                    |
| Ana Trujillo Emparedados y helados Customer     |
| Antonio Moreno Taquería Customer                |


-- 24. Find names and contact information of all people in database. Produce a list where is
SELECT 'Supplier' AS 'Relation', 
	s.ContactName AS Name, 
	CONCAT(s.Address, ' ', s.City, ' ', s.Region, ' ', s.PostalCode, ' ', s.Country) AS 'Address/Tel' 
FROM Suppliers AS s 

UNION ALL 

SELECT 'Customer' AS 'Relation', 
	c.ContactName AS Name, 
	CONCAT(c.Address, ' ', c.City, ' ', c.Region, ' ', c.PostalCode, ' ', c.Country) AS 'Address/Tel' 
FROM Customers AS c 

UNION ALL 

SELECT 'Employee' AS 'Relation', 
	CONCAT(e.FirstName, ' ', e.LastName) AS Name, 
	e.Homephone AS 'Address/Tel' 
FROM Employees AS e; 
+----------+-----------------------------+---------------------------------------------------------------------------------+
| Relation | Name                        | Address/Tel                                                                     |
+----------+-----------------------------+---------------------------------------------------------------------------------+
| Supplier | Charlotte Cooper            | NULL                                                                            |
| Supplier | Shelley Burke               | P.O. Box 78934 New Orleans LA 70117 USA                                         |
| Supplier | Regina Murphy               | 707 Oxford Rd. Ann Arbor MI 48104 USA                                           |


-- 25. Find out how much would value of order 10288 raise, if you raise original unit price with 5 € and at the same time you raise original unit price +5 %.
SELECT SUM(FinalPrice) AS `Total Order Value` FROM ( 
	SELECT UnitPrice, 
		Quantity, 
		Discount, 
		ROUND(((UnitPrice + 5) * 1.05), 2) AS NewUnitPrice, 
		((UnitPrice + 5) * 1.05) * Quantity AS `NewUnitPrice*Quantity`, 
		ROUND((((UnitPrice + 5) * 1.05) * Quantity) * (1 - Discount), 2) AS FinalPrice 
	FROM `Order details` 
	WHERE OrderID = 10288 
) AS PriceCalculation; 
+-------------------+
| Total Order Value |
+-------------------+
|            145.52 |
+-------------------+


-- 26. Find the product having highest unit price.
SELECT * FROM products 
WHERE unitprice IN (SELECT MAX(unitprice) FROM products); 
+-----------+---------------+------------+------------+--------------------+-----------+--------------+--------------+--------------+--------------+
| ProductID | ProductName   | SupplierID | CategoryID | QuantityPerUnit    | UnitPrice | UnitsInStock | UnitsOnOrder | ReorderLevel | Discontinued |
+-----------+---------------+------------+------------+--------------------+-----------+--------------+--------------+--------------+--------------+
|        38 | Côte de Blaye |         18 |          1 | 12 - 75 cl bottles |  268.7700 |           17 |            0 |           15 |            0 |
+-----------+---------------+------------+------------+--------------------+-----------+--------------+--------------+--------------+--------------+


-- 27. Find the product having lowest unit price.
SELECT * FROM products 
WHERE unitprice IN (SELECT MIN(unitprice) FROM products); 
+-----------+-------------+------------+------------+-----------------+-----------+--------------+--------------+--------------+--------------+
| ProductID | ProductName | SupplierID | CategoryID | QuantityPerUnit | UnitPrice | UnitsInStock | UnitsOnOrder | ReorderLevel | Discontinued |
+-----------+-------------+------------+------------+-----------------+-----------+--------------+--------------+--------------+--------------+
|        33 | Geitost     |         15 |          4 | 500 g           |    2.5000 |          112 |            0 |           20 |            0 |
+-----------+-------------+------------+------------+-----------------+-----------+--------------+--------------+--------------+--------------+


-- 28. Find the average unit price and the count of products.
SELECT AVG(unitprice), COUNT(*) FROM products; 
+----------------+----------+
| AVG(unitprice) | COUNT(*) |
+----------------+----------+
|    28.98474026 |       77 |
+----------------+----------+

-- 29. Find the count of products having unit price over 50 €.
SELECT COUNT(*) FROM products 
WHERE unitprice > 50; 
+----------+
| COUNT(*) |
+----------+
|        7 |
+----------+

-- 30. Find post areas from where we have customers. Every post area should be only once in the list.
SELECT DISTINCT region FROM customers 
WHERE region IS NOT NULL; 
+---------------+
| region        |
+---------------+
| AK            |
| BC            |
| CA            |


-- 31. Find the count of different post areas we have customers from.
SELECT COUNT(DISTINCT region) FROM customers 
WHERE region IS NOT NULL; 
+------------------------+
| COUNT(DISTINCT region) |
+------------------------+
|                     19 |
+------------------------+


-- 32. Find the names and addresses of suppliers that sell products in bottles.
SELECT DISTINCT suppliers.companyname, suppliers.address 
FROM suppliers 
INNER JOIN products 
ON suppliers.supplierid = products.supplierid 
WHERE products.quantityperunit LIKE '%bottle%' 
ORDER BY suppliers.companyname; 
+-----------------------------------+-------------------------------+
| companyname                       | address                       |
+-----------------------------------+-------------------------------+
| Aux joyeux ecclésiastiques        | 203, Rue des Francs-Bourgeois |
| Bigfoot Breweries                 | 3400 - 8th Avenue Suite 210   |
| Exotic Liquids                    | 49 Gilbert St.                |


-- 33. Find the number of products in every product category. The list should have two columns: category name and count of products in this category.
SELECT categories.categoryname, COUNT(products.categoryid) AS total FROM PRODUCTS 
INNER JOIN categories on categories.categoryid = products.categoryid 
GROUP BY categoryname; 
+----------------+-------+
| categoryname   | total |
+----------------+-------+
| Beverages      |    12 |
| Condiments     |    12 |
| Confections    |    13 |


-- 34. Find average, maximum and minimum of quantities in order details for every product. The list should be in descending order by average values.
SELECT p.ProductID AS 'Product ID', p.productname AS 'Product Name', 
MAX(od.quantity) AS Maximum, MIN(od.quantity) AS Minimum, AVG(od.quantity) AS Average 
FROM products AS p 

INNER JOIN `order details` AS od ON p.productid = od.productid 
GROUP BY productname 
ORDER BY Average DESC; 
+------------+----------------------------------+---------+---------+---------+
| Product ID | Product Name                     | Maximum | Minimum | Average |
+------------+----------------------------------+---------+---------+---------+
|         27 | Schoggi Schokolade               |     120 |      10 | 40.5556 |
|         45 | Røgede sild                      |     110 |       4 | 36.2857 |
|         60 | Camembert Pierrot                |     100 |       2 | 30.9216 |


-- 35. Like previous, but only for products ordered at least in 50 orders.
SELECT p.ProductID AS 'Product ID', p.productname AS 'Product Name', 
MAX(od.quantity) AS Maximum, MIN(od.quantity) AS Minimum, AVG(od.quantity) AS Average, 
COUNT(od.productid) as 'Order Count' 
FROM products AS p 

INNER JOIN `order details` AS od ON p.productid = od.productid 
GROUP BY productname 
HAVING COUNT(od.productid) >= 50 
ORDER BY Average DESC; 
+------------+------------------------+---------+---------+---------+-------------+
| Product ID | Product Name           | Maximum | Minimum | Average | Order Count |
+------------+------------------------+---------+---------+---------+-------------+
|         60 | Camembert Pierrot      |     100 |       2 | 30.9216 |          51 |
|         59 | Raclette Courdavault   |     110 |       1 | 27.7037 |          54 |
|         31 | Gorgonzola Telino      |      70 |       1 | 27.3922 |          51 |


-- 36. Like previous, but only for Beverages catagory.
SELECT p.ProductID AS 'Product ID', p.productname AS 'Product Name', 
MAX(od.quantity) AS Maximum, MIN(od.quantity) AS Minimum, AVG(od.quantity) AS Average, 
COUNT(od.productid) as 'Order Count' 
FROM products AS p 

INNER JOIN `order details` AS od ON p.productid = od.productid 

INNER JOIN Categories AS c ON p.CategoryID = c.CategoryID 
WHERE c.CategoryName = 'Beverages' 

GROUP BY productname 
HAVING COUNT(od.productid) >= 50 
ORDER BY Average DESC; 
+------------+--------------------+---------+---------+---------+-------------+
| Product ID | Product Name       | Maximum | Minimum | Average | Order Count |
+------------+--------------------+---------+---------+---------+-------------+
|         24 | Guaraná Fantástica |     110 |       3 | 22.0588 |          51 |
+------------+--------------------+---------+---------+---------+-------------+


-- 37. Find name of customer, orderid and orderdate for orders 10600 - 10620.
SELECT o.OrderID, o.OrderDate, c.CompanyName, c.ContactName 
FROM Orders AS o 
LEFT JOIN Customers AS c 
ON o.CustomerID = c.CustomerID 
WHERE o.OrderID BETWEEN 10600 AND 10620; 
+---------+---------------------+--------------------------------+-------------------------+
| OrderID | OrderDate           | CompanyName                    | ContactName             |
+---------+---------------------+--------------------------------+-------------------------+
|   10600 | 1995-08-16 00:00:00 | Hungry Coyote Import Store     | Yoshi Latimer           |
|   10601 | 1995-08-16 00:00:00 | HILARIÓN-Abastos               | Carlos Hernández        |
|   10602 | 1995-08-17 00:00:00 | Vaffeljernet                   | Palle Ibsen             |


-- 38. Find the number of products ordered in every order having shipcountry France. List should have two columns: orderid and quantity of products. The list should also be in decending order by quantity of products.
SELECT od.OrderID, SUM(od.Quantity) AS TotalQuantity 
FROM `Order Details` AS od 
WHERE OrderID IN ( 
	SELECT OrderID FROM Orders 
	WHERE ShipCountry = 'France' 
) 
GROUP BY orderID 
ORDER BY TotalQuantity DESC; 
+---------+---------------+
| OrderID | TotalQuantity |
+---------+---------------+
|   10360 |           138 |
|   10511 |           110 |
|   10634 |           102 |


-- 39. Find the orders handled by employee Robert King. List should include columns orderid and customer's name. The list should be in ascending order by names of customers.
SELECT o.OrderID, c.CompanyName, c.ContactName 
FROM Orders AS o 

INNER JOIN Customers AS c 
ON o.CustomerID = c.CustomerID 

INNER JOIN Employees AS e 
ON o.EmployeeID = e.EmployeeID 
WHERE FirstName = 'Robert' AND LastName = 'King' 

ORDER BY CompanyName; 
+---------+------------------------------------+----------------------+
| OrderID | CompanyName                        | ContactName          |
+---------+------------------------------------+----------------------+
|   10308 | Ana Trujillo Emparedados y helados | Ana Trujillo         |
|   10573 | Antonio Moreno Taquería            | Antonio Moreno       |
|   10507 | Antonio Moreno Taquería            | Antonio Moreno       |


-- 40. How many different customers Robert King has managed by handling orders?
SELECT COUNT(DISTINCT RobertKing.CompanyName) 
FROM ( 
	SELECT o.OrderID, c.CompanyName, c.ContactName 
	FROM Orders AS o 
	
	INNER JOIN Customers AS c 
	ON o.CustomerID = c.CustomerID 
	
	INNER JOIN Employees AS e 
	ON o.EmployeeID = e.EmployeeID 
	WHERE FirstName = 'Robert' 
	AND 
	LastName = 'King' 
	
	ORDER BY CompanyName 
) AS RobertKing 
ORDER BY RobertKing.CompanyName; 
+----------------------------------------+
| COUNT(DISTINCT RobertKing.CompanyName) |
+----------------------------------------+
|                                     45 |
+----------------------------------------+


-- 41. Find the customers whose orders Robert King has managed at least three times.
SELECT RobertKing.CompanyName, COUNT(RobertKing.CompanyName) 
FROM ( 
	SELECT o.OrderID, c.CompanyName, c.ContactName 
	FROM Orders AS o 
	
	INNER JOIN Customers AS c 
	ON o.CustomerID = c.CustomerID 
	
	INNER JOIN Employees AS e 
	ON o.EmployeeID = e.EmployeeID 
	WHERE FirstName = 'Robert' AND 
	LastName = 'King' 
	
	ORDER BY CompanyName 
) AS RobertKing 
GROUP BY CompanyName 
HAVING COUNT(RobertKing.CompanyName) >= 3; 
+---------------------+-------------------------------+
| CompanyName         | COUNT(RobertKing.CompanyName) |
+---------------------+-------------------------------+
| Ernst Handel        |                             4 |
| Godos Cocina Típica |                             3 |
| HILARIÓN-Abastos    |                             3 |


-- 42. Find the suppliers of every product. The list should have two columns: Supplier name and Product name. The list should also be in ascending order by supplier name.
SELECT s.CompanyName AS 'Supplier Name', p.ProductName AS 'Product Name' 
FROM Products AS p 
INNER JOIN Suppliers AS s ON p.supplierid = s.supplierid 
ORDER BY s.CompanyName ASC; 
+----------------------------------------+----------------------------------+
| Supplier Name                          | Product Name                     |
+----------------------------------------+----------------------------------+
| Aux joyeux ecclésiastiques             | Chartreuse verte                 |
| Aux joyeux ecclésiastiques             | Côte de Blaye                    |
| Bigfoot Breweries                      | Steeleye Stout                   |


-- 43. Find the suppliers of every product in Beverages category. The list should have two columns: Supplier name and Product name. The list should also be in ascending order by supplier name.
SELECT s.CompanyName AS 'Supplier name', p.ProductName as 'Product Name'
FROM Products AS p

INNER JOIN Categories AS c
ON  p.CategoryID = c.CategoryID

INNER JOIN Suppliers AS s
ON p.SupplierID = s.SupplierID

WHERE c.CategoryName = 'Beverages'
ORDER BY s.CompanyName;
+-----------------------------------+---------------------------+
| Supplier name                     | Product Name              |
+-----------------------------------+---------------------------+
| Aux joyeux ecclésiastiques        | Chartreuse verte          |
| Aux joyeux ecclésiastiques        | Côte de Blaye             |
| Bigfoot Breweries                 | Laughing Lumberjack Lager |

-- 44. Find names and ages of employees. Calculate the age approximately by substracting year of birth and current year. Name the employee age columns to age.
SELECT 	CONCAT(FirstName, ' ', LastName) AS Name,
		DATE(BirthDate) AS DOB,
		TIMESTAMPDIFF(YEAR, BirthDate, Now()) AS Age
FROM Employees
ORDER BY Age DESC;
+------------------+------------+------+
| Name             | DOB        | Age  |
+------------------+------------+------+
| Margaret Peacock | 1937-09-19 |   79 |
| Nancy Davolio    | 1948-12-08 |   68 |
| Andrew Fuller    | 1952-02-19 |   65 |

-- 45. Calculate the employees exact age.
-- I had problems getting the exact number of days, but I think this is close enough:
SELECT 	CONCAT(FirstName, ' ', LastName) AS Name,
	DATE(BirthDate) AS DOB,
	CONCAT(
		TIMESTAMPDIFF(YEAR, BirthDate, Now()), ' years, ',
		MOD(TIMESTAMPDIFF(MONTH, BirthDate, Now()), 12), ' months') AS 'Exact age'
FROM Employees
ORDER BY DOB;
+------------------+------------+---------------------+
| Name             | DOB        | Exact age           |
+------------------+------------+---------------------+
| Margaret Peacock | 1937-09-19 | 79 years, 6 months  |
| Nancy Davolio    | 1948-12-08 | 68 years, 4 months  |
| Andrew Fuller    | 1952-02-19 | 65 years, 1 months  |


-- 46. Suppose that we would have added 25 € to every order as billing costs. How much would every customer then have been paid to us as billing costs?
SELECT c.CustomerID, c.CompanyName, 
	COUNT(o.CustomerID) AS `Orders Made`,
    COUNT(o.CustomerID)*25 AS `Total Billing Costs (EUR)`
FROM orders AS o
INNER JOIN Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY `Orders Made` DESC;
+------------+------------------------------------+-------------+---------------------------+
| CustomerID | CompanyName                        | Orders Made | Total Billing Costs (EUR) |
+------------+------------------------------------+-------------+---------------------------+
| SAVEA      | Save-a-lot Markets                 |          31 |                       775 |
| ERNSH      | Ernst Handel                       |          30 |                       750 |
| QUICK      | QUICK-Stop                         |          28 |                       700 |


-- 47. Find names of employees and their subordinates.
TODO


-- 48. Find names of employees and their subordinates. Show also employees that don't have subordinate.
TODO


-- 49. Find products having quantity in stock less than their reorderlevel.
SELECT ProductID, UnitsInStock, UnitsOnOrder FROM Products 
WHERE UnitsInStock < UnitsOnOrder;
+-----------+--------------+--------------+
| ProductID | UnitsInStock | UnitsOnOrder |
+-----------+--------------+--------------+
|         2 |           17 |           40 |
|         3 |           13 |           70 |
|        11 |           22 |           30 |


-- 50. Find orders shipped next day after order date.
SELECT OrderID, OrderDate, ShippedDate FROM Orders
WHERE ShippedDate = DATE_ADD(OrderDate, INTERVAL 1 DAY);
+---------+---------------------+---------------------+
| OrderID | OrderDate           | ShippedDate         |
+---------+---------------------+---------------------+
|   10270 | 1994-09-01 00:00:00 | 1994-09-02 00:00:00 |
|   10381 | 1995-01-12 00:00:00 | 1995-01-13 00:00:00 |
|   10388 | 1995-01-19 00:00:00 | 1995-01-20 00:00:00 |


-- 51. Find customers, who have ordered Lakkalikööriä. Customer should be on the list only once.
SELECT o.OrderID, p.ProductName, c.CompanyName FROM Orders as o

INNER JOIN `order details` AS od
ON o.OrderID = od.OrderID

INNER JOIN products AS p
ON od.ProductID = p.ProductID

INNER JOIN customers AS c
ON o.CustomerID = c.CustomerID

WHERE p.ProductName = 'Lakkalikööri'
GROUP BY c.CompanyName;
+---------+--------------+--------------------------------+
| OrderID | ProductName  | CompanyName                    |
+---------+--------------+--------------------------------+
|   10702 | Lakkalikööri | Alfreds Futterkiste            |
|   10837 | Lakkalikööri | Berglunds snabbköp             |
|   10582 | Lakkalikööri | Blauer See Delikatessen        |


-- 52. How many different customers have orded products supplied by Bigfoot Breweries?
SELECT COUNT(DISTINCT o.CustomerID) 
FROM Orders AS o

INNER JOIN 	`Order Details` AS od
ON od.OrderID = o.OrderID

INNER JOIN 	Products as p
ON p.ProductID = od.ProductID

INNER JOIN 	Suppliers AS s
ON s.SupplierID = p.SupplierID

WHERE s.CompanyName = 'Bigfoot Breweries';
+------------------------------+
| COUNT(DISTINCT o.CustomerID) |
+------------------------------+
|                           42 |
+------------------------------+


-- 53. Find all finnish, swedish and norwegian suppliers and customers. The list should be in ascending order by country.
SELECT * FROM ( 
	SELECT c.Country, c.CompanyName, 'Customer' AS Relation FROM Customers AS c 
	WHERE c.Country IN ('Finland', 'Norway', 'Sweden') 

	UNION 

	SELECT s.Country, s.CompanyName, 'Supplier' AS Relation 
	FROM Suppliers AS s 
	WHERE s.Country IN ('Finland', 'Norway', 'Sweden') 
) AS NordicCompanies 

ORDER BY Country, Relation, CompanyName; 
+---------+--------------------+----------+
| Country | CompanyName        | Relation |
+---------+--------------------+----------+
| Finland | Some Company       | Customer |
| Finland | Wartian Herkku     | Customer |
| Finland | Wilman Kala        | Customer |


-- 54. Find employees having started later than every London employees.
SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS Name FROM Employees 
WHERE HireDate > ( 
	SELECT MAX(HireDate) FROM Employees 
	WHERE City = 'London' 
); 
+------------+--------------+
| EmployeeID | Name         |
+------------+--------------+
|         10 | Joshua Scott |
+------------+--------------+


-- 55. Find employees having started later than some London employee.
SELECT EmployeeID, CONCAT(FirstName, ' ', LastName) AS Name FROM Employees 
WHERE HireDate > ( 
	SELECT MIN(HireDate) FROM Employees 
	WHERE City = 'London' 
); 
+------------+----------------+
| EmployeeID | Name           |
+------------+----------------+
|          7 | Robert King    |
|          8 | Laura Callahan |
|          9 | Anne Dodsworth |


-- 56. Find post area where we have both employees and customers.
SELECT DISTINCT Region FROM Employees 
WHERE Region IN ( 
	SELECT DISTINCT Region FROM Customers 
	WHERE Region IS NOT NULL 
); 
+--------+
| Region |
+--------+
| WA     |
+--------+


-- 57. Find post area where we have employees but not customers.
SELECT DISTINCT Region FROM Employees 
WHERE Region NOT IN ( 
	SELECT DISTINCT Region FROM Customers 
	WHERE Region IS NOT NULL 
); 
+--------+
| Region |
+--------+
| SW     |
+--------+


-- 58. Add your information to Employees table. Check first how data is represented in this table. You don't have phone number at work (Extension).
INSERT INTO employees VALUES ( 
	NULL, 
	'Scott', 
	'Joshua', 
	'CEO', 
	'Mr.', 
	'1990-01-23', 
	now(), 
	'123 Main Street', 
	'Turku', 
	'SW', 
	12345, 
	'Finland', 
	'01302 644520', 
	NULL, 
	NULL, 
	'Joshua has made the Kessel Run in 12 parsecs', 
	NULL 
); 


-- 59. Add new order and put yourself as employee. You don't know the shipped day!
INSERT INTO Orders VALUES ( 
	NULL, 
	'RICSU', 
	'10', 
	NOW(), 
	DATE_ADD(NOW(),INTERVAL 1 WEEK), 
	NULL, 
	'2', 
	'30.8500', 
	'Richter Supermarkt', 
	'Starenweg 5', 
	'Genève', 
	NULL, 
	'1204', 
	'Switzerland' 
);


-- 60. Add two rows in orderdetails fro the previous order. They do not have any discount.
INSERT INTO `order details` VALUES ( 
	'11078', 
	'1', 
	'18.0000', 
	'5', 
	'0' 
); 

INSERT INTO `order details` VALUES ( 
	'11078', 
	'2', 
	'19.0000', 
	'3', 
	'0' 
); 


-- 61. The shipped day for Order in exercise 59 is tomorrow. Update the information!
UPDATE Orders 
SET ShippedDate = CURDATE() + INTERVAL 1 DAY 
WHERE OrderID = '11078'; 


-- 62. You finally got a work phone: the extension is 4455.
UPDATE Employees 
SET Extension = '4455' 
WHERE FirstName = 'Joshua' AND LastName = 'Scott';


-- 63. Add your information to Customers-table using Select-form of Insert-sentence. Leave those fields empty, which you don't get from Employees-table.
INSERT INTO Customers ( 
	SELECT
		EmployeeID, 
		'Some Company', 
		CONCAT(FirstName, ' ', LastName), 
		Title, 
		Address, 
		City, 
		Region, 
		PostalCode, 
		Country, 
		HomePhone, 
		NULL, 
		NULL, 
		NULL
	FROM Employees 
	WHERE EmployeeID = 10 
); 


-- 64. Raise prices of products in Beverages category with 2 %.
UPDATE Products 
SET UnitPrice = UnitPrice*1.02 

WHERE CategoryID IN ( 
SELECT CategoryID FROM Categories 
WHERE CategoryName = 'Beverages' 
); 


-- 65. Remove the order and orderlines you made earlier.
DELETE FROM Orders 
WHERE orderID = '11078'; 

DELETE FROM `order details` 
WHERE orderID = '11078';


-- 66. Change your title to Chief Executive and country to Cayman-Islands.
UPDATE Employees 
SET Title = 'Chief Executive', Country = 'Cayman Islands' 
WHERE EmployeeID = '10';


-- 67. Put yourself as boss for two employees without knowing your employeeid.
UPDATE Employees 
SET ReportsTo = 
(SELECT EmployeeID FROM (SELECT EmployeeID, FirstName, LastName FROM Employees) AS EmployeeTable 
WHERE FirstName = 'Joshua' AND LastName = 'Scott') 
WHERE EmployeeID = FLOOR(RAND() * 9) + 1 
LIMIT 1; 
-- Note: this behaves oddly. I was first testing the Random Number Generator with a SELECT .. WHERE statement, like so: 
SELECT EmployeeID FROM Employees 
WHERE EmployeeID = FLOOR(RAND() * 9) + 1; 
-- The RNG should return one row, with an EmployeeID from 1-9 inclusive. Most of the time (~75%), it does. 
-- But sometimes, no rows would be returned, sometimes 2 rows, and even sometimes 3 rows would be returned.
-- I'm not sure why this happens.
-- Anyway, this query *will* change the ReportsTo value to me, for two randomly selected employees. 
-- The only caveat is, you must run it at least twice; possibly more if it fails to get a row for whatever reason, or if the same row is selected twice in a row...


-- 68. Create new table called Players. There are three columns: id, name and other_information. Id is number, name and other_informatio are both strings. Check that table exists.
DROP TABLE IF EXISTS Players; 
CREATE TABLE Players ( 
id int(11) NOT NULL, 
name varchar(50) NOT NULL, 
other_information varchar(200) DEFAULT NULL 
); 


-- 69. Define Id-column as primary key in the Players-table.
ALTER TABLE Players 
ADD PRIMARY KEY (id); 
-- And, to add AUTO_INCREMENT to the Primary Key: 
ALTER TABLE Players 
MODIFY COLUMN id INT AUTO_INCREMENT; 


-- 70. Add new column Salary to Players. Salary can be anything between 0 to 50000 (= There is also check constraint called Salary_ck).
ALTER TABLE Players 
ADD salary INT, 
ADD CONSTRAINT Salary_ck CHECK (salary BETWEEN 0 AND 50000); 
-- I then checked the constraint by inserting an incorrect value: 
INSERT INTO Players VALUES (NULL, "Gary Neville", NULL, 50001); 
-- ...however, the INSERT query worked: 
| id | name | other_information | salary | 
+----+--------------+-------------------+--------+ 
| 1 | Gary Neville | NULL | 50001 | 
-- After searching for a solution, it seems that Check constraints don't actually do anything in MySQL: 
-- http://stackoverflow.com/questions/2115497/check-constraint-in-mysql-is-not-working 
-- Apparently MariaDB does support Check constraints since version 10.2.1: https://mariadb.com/kb/en/mariadb/constraint/ 
-- (MariaDB is a fork of MySQL, led by one of the creators of MySQL since MySQL was acquired by Oracle).


-- 71. Create new table called Teams. There are two columns: team_id and teamname. Both field are mandatory.
DROP TABLE IF EXISTS Teams; 
CREATE TABLE Teams ( 
team_id INT NOT NULL, 
teamname VARCHAR(50) NOT NULL 
);


-- 72. Add new column Team to Players. This column is foreign key to Teams-table referencing to team_id. What you have to do before you succeed?
-- First, adding a column 'team' to Players: 
ALTER TABLE Players 
ADD team INT NOT NULL; 
-- To become a Foreign key, 'team' must be *exactly* the same datatype as the key it references (e.g. SMALLINTs are not compatible with INTs). 
-- But that is necessary but not sufficient. The key team_id must also be INDEXED, like this: 
ALTER TABLE Teams ADD INDEX (team_id); 
-- We can then add the foreign key: 
ALTER TABLE Players 
ADD FOREIGN KEY (team) REFERENCES Teams(team_id);


-- 73. Remove column other_information from Players-table.
ALTER TABLE Players 
DROP COLUMN other_information;


-- 74. Create view Team_players. The view has columns teamname and playername.
CREATE VIEW Team_players AS 
SELECT p.name AS playername, t.teamname AS teamname 
FROM Players AS p 
INNER JOIN Teams AS t 
ON p.team = t.team_id; 
-- We can then select Team_players like it's an actual table: 
SELECT * FROM Team_players;


-- 75. Add new column LeagueLevel to Teams. Default value for the column is 'Premier'.
ALTER TABLE Teams 
ADD COLUMN LeagueLevel VARCHAR(50) DEFAULT 'Premier';


-- 76. Create view PremierLeagueTeams, which shows only teams in Premier-league.
CREATE VIEW PremierLeagueTeams AS 
SELECT teamname FROM Teams 
WHERE LeagueLevel = 'Premier';


-- 77. Remove Team table. What else do you have to do?
Trying to DROP Teams straight away results in an error due to the Foreign Key associated with it. 
-- To check the foreign key references, and the constraint_name, we can run: 
SELECT * FROM information_schema.KEY_COLUMN_USAGE 
WHERE REFERENCED_TABLE_NAME = 'Teams'; 
-- We can then remove the foreign key in the following manner: 
ALTER TABLE table_name 
DROP FOREIGN KEY constraint_name; 
-- In this case, the query became: 
ALTER TABLE Players 
DROP FOREIGN KEY players_ibfk_1; 
-- We can then drop Teams in the usual way: 
DROP Table Teams;


-- 78. Find names of territory managers in each region, also include the territory name and the description of the region they work in.
TODO


-- 79. How many managers are there in each region?
TODO


-- 80. Find products which have reorderlevel 10, 25 or 30.
SELECT ProductID, ProductName, ReorderLevel
FROM Products
WHERE ReorderLevel IN (10, 25, 30);
+-----------+---------------------------------+--------------+
| ProductID | ProductName                     | ReorderLevel |
+-----------+---------------------------------+--------------+
|         1 | Chai                            |           10 |
|         2 | Chang                           |           25 |
|         3 | Aniseed Syrup                   |           25 |


-- 81. How many product categories there are?
SELECT COUNT(*) FROM Categories;
+----------+
| COUNT(*) |
+----------+
|        8 |
+----------+


-- 82. List supplier names in order of value of products we have in stock, include the stock value for each.
SELECT p.ProductName, s.CompanyName, p.UnitsInStock, (p.UnitsInStock * p.UnitPrice) AS 'Stock Value'
FROM Products AS p
INNER JOIN Suppliers AS s USING (SupplierID)
ORDER BY `Stock Value` DESC;
+----------------------------------+----------------------------------------+--------------+-------------+
| ProductName                      | CompanyName                            | UnitsInStock | Stock Value |
+----------------------------------+----------------------------------------+--------------+-------------+
| Côte de Blaye                    | Aux joyeux ecclésiastiques             |           17 |   4569.0900 |
| Raclette Courdavault             | Gai pâturage                           |           79 |   4345.0000 |
| Queso Manchego La Pastora        | Cooperativa de Quesos 'Las Cabras'     |           86 |   3268.0000 |

