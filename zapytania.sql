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
SELECT AVG(price) FROM products WHERE category_id="1";
SELECT SUM(price) FROM products WHERE category_id="2";
SELECT MAX(price) FROM products WHERE category_id="1" OR category_id="2" GROUP BY category_id;


SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 20;
SELECT * FROM products WHERE category_id IN("1","2","3");
SELECT * FROM orders WHERE shipper_id_id IN("1","2","3");
SELECT * FROM products WHERE PRICE BETWEEN 10 AND 15 AND category_id NOT IN("1","2","3","4");
SELECT * FROM orders WHERE order_date BETWEEN "1996-07-01" AND  "1996-07-31";
SELECT * FROM orders WHERE customer_id IN(SELECT id FROM customers WHERE id BETWEEN 77 AND 90);

SELECT * FROM customers JOIN orders ON customers.id=orders.customer_id;
SELECT customer_name,COUNT(orders.id)  FROM customers INNER JOIN orders ON customers.id=orders.customer_id GROUP BY customer_id;

SELECT * FROM orders ORDER BY id DESC limit 10;
SELECT * FROM orders limit 10 OFFSET 10;

SELECT * FROM orders JOIN orders_details  ON products.id=orders_details.product_id GROUP BY quantity

SELECT country FROM customers HAVING COUNT(country)>5






