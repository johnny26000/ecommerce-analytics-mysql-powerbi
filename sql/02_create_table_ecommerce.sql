CREATE TABLE ecommerce
(order_id SMALLINT UNSIGNED PRIMARY KEY,
order_date VARCHAR (20),
customer_id SMALLINT,
product_category VARCHAR (50),
region VARCHAR (50),
quantity SMALLINT,
unit_price decimal (10, 2),
discount decimal (5, 2),
payment_method VARCHAR (30),
delivery_days SMALLINT,
customer_rating DECIMAL (5,2),
revenue DECIMAL (10,2)
);
