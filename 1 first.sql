--create table customers
CREATE TABLE customers (
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	address VARCHAR(255) DEFAULT NULL,
	city VARCHAR(255) DEFAULT NULL,
	state VARCHAR(2) DEFAULT NULL,
	zip_code VARCHAR(5) DEFAULT NULL,
);


--create table orders
CREATE TABLE orders (
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_placed_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);


--Question 
/*It's the end of 2016, and the owner of Cocoa Confections wants to write an SQL query that finds the COUNT of orders placed in 2016 by customer e-mail address. She wants to ORDER the results by the COUNT of orders placed in 2016, descending, so that she can personally send thank-you e-mails to Cocoa Confection's top customers by order volume.*/


--SQL Query
SELECT
	*
FROM
	orders
INNER JOIN
	customers ON orders.customer_id = customers.customer_id;
