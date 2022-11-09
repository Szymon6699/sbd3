SELECT * FROM customers WHERE country="germany";
SELECT * FROM customers WHERE city="Berlin";
SELECT * FROM customers WHERE city="Berlin" AND country="germany";
SELECT * FROM customers WHERE (city="Berlin" OR city="München") AND country="germany";
SELECT * FROM customers WHERE country!="germany" AND country!="USA";
SELECT country FROM customers ORDER BY country ASC;
SELECT country FROM customers ORDER BY country DESC;
SELECT * FROM customers ORDER BY country DESC,customer_Name ASC;

SELECT MIN(price) FROM products;
SELECT MAX(price) FROM products;
SELECT COUNT(id) FROM products;
SELECT COUNT(id) FROM customers;
SELECT COUNT(customer_name) FROM customers GROUP BY country;




