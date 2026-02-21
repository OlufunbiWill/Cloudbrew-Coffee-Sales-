Create table customers
 (
 customer_id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(100) NOT NULL,
lastname VARCHAR(100) NOT NULL,
email VARCHAR (100),
phone VARCHAR (20),
join_date DATE NOT NULL
);


Create table products
(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
price DECIMAL (10,2) NOT NULL
);

Create table orders
(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
foreign key(customer_id) references customers(customer_id),
order_date DATE NOT NULL,
order_time TIME NOT NULL,
total_amount DECIMAL (10,2) NOT NULL
);


Create table order_items
(
order_item_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
foreign key (order_id) references orders(order_id),
product_id INT NOT NULL,
foreign key (product_id) references products(product_id),
quantity INT NOT NULL,
item_price DECIMAL (10,2) NOT NULL
);