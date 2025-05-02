USE salesdb;

SELECT firstName, email, tb1.officecode
FROM employees tb1
INNER JOIN offices tb2
	ON tb1.officecode=tb2.officecode;

-- Answer 2:  
 SELECT productName, productVendor, tp.productLine
 FROM products tp
 LEFT JOIN productlines tpl
	ON tp.productLine=tpl.productLine;

-- Answer 3:
SELECT OrderDate, shippedDate, status, tb1.customerNumber
FROM customers tb1
RIGHT JOIN orders tb2
	ON tb2.customerNumber=tb1.customerNumber
LIMIT 10;  
