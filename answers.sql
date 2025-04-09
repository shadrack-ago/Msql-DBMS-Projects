USE salesdb; -- selected the salesdb database



-- question 1
-- To view the structure of the payments table
SELECT *
FROM payments;
--answer 1

SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- question 2
---- To view the structure of the customers table
SELECT *
FROM customers;
--answer 2

SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName,country;

-- question 3
-- To view the structure of the payments table
SELECT *
FROM orderdetails;

--my answer 3
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM
    orderdetails
GROUP BY
    productCode,
    quantityOrdered;

-- question 4    
-- To view the structure of the payments table
SELECT *
FROM payments;

--answer 4

SELECT checkNumber, MAX(amount) AS highest_payment_perCheck
FROM payments
GROUP BY checkNumber;

