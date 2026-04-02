#Find customers with more than 1 order

create database business;
use business;

CREATE TABLE customers ( 
customer_id INT PRIMARY KEY, 
name VARCHAR(50), 
city VARCHAR(50), 
signup_date DATE 
);

INSERT INTO customers VALUES 
(1,'Rohit','Hyderabad','2024-01-01'), 
(2,'Aman','Delhi','2024-02-10'), 
(3,'Sara','Mumbai','2024-03-15'); 



CREATE TABLE orders ( 
order_id INT PRIMARY KEY, 
customer_id INT references customers(customer_id), 
order_date DATE, 
amount DECIMAL(10,2), 
status VARCHAR(20));

INSERT INTO orders VALUES 
(201,1,'2024-04-01',2500,'Completed'), 
(202,2,'2024-04-03',1500,'Pending'), 
(203,1,'2024-04-05',3000,'Completed');

CREATE TABLE products ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(50), 
category VARCHAR(50), 
price DECIMAL(10,2) 
); 

INSERT INTO products VALUES 
(101,'Router','Networking',2000), 
(102,'Switch','Networking',1500), 
(103,'Cable','Accessories',500); 

CREATE TABLE order_items ( 
order_item_id INT PRIMARY KEY, 
order_id INT, 
product_id INT, 
quantity INT, 
FOREIGN KEY (order_id) REFERENCES orders(order_id), 
FOREIGN KEY (product_id) REFERENCES products(product_id) 
); 

INSERT INTO order_items VALUES 
(1,201,101,1), 
(2,201,103,1), 
(3,202,102,1), 
(4,203,101,1), 
(5,203,102,1); 



Select c.name,c.customer_id, count(o.order_id) as no_of_orders
from customers as c 
inner join orders as o
on c.customer_id = o.customer_id
group by c.name,c.customer_id
having count(o.order_id) >1;
