-- Designing a Database for Bubs'Bigtime Baby Booties store.

CREATE SCHEMA bubsbigtimebabybooties;
USE bubsbigtimebabybooties;

-- Create Customers table

CREATE TABLE customers (
customer_id BIGINT UNIQUE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(75) UNIQUE NOT NULL,
PRIMARY KEY(customer_id)
)
ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO customers VALUES
(1, 'Rukayat', 'Rauf', 'ratafarrukayat@gmail.com'),
(2, 'Sade', 'Adeleke', 'sadeadeleke@yahoo.com'),
(3, 'Tope', 'Simbiat', 'simbiat23@gmail.com');

-- Create Product table

CREATE TABLE products (
product_id BIGINT UNIQUE NOT NULL,
product_name VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY(product_id)
)
ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO products VALUES
(1, 'Babytop'),
(2, 'Diaper'),
(3, 'Gown');


-- Create Employee table

CREATE TABLE employees (
employee_id BIGINT UNIQUE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
start_date DATE NOT NULL,
position_held VARCHAR(50) NOT NULL,
PRIMARY KEY(employee_id)
)
ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO employees VALUES
(1, 'Angela', 'Mark', '2019-01-05', 'Manager'),
(2, 'Ajuru', 'Kigali', '2015-09-11', 'Assistant Manager'),
(3, 'Oluchi', 'Njoka', '2022-12-20','Sales Rep');


-- Create Purchase table
CREATE TABLE purchases (
order_id BIGINT UNIQUE NOT NULL,
customer_id BIGINT NOT NULL,
product_id BIGINT NOT NULL,
order_date DATE NOT NULL,
price DECIMAL(13,2) NOT NULL,
employee_id BIGINT NOT NULL,
PRIMARY KEY(order_id)
)
ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO purchases VALUES
(1, 1, 2, '2024-03-25', 160.00, 3),
(2, 3, 1, '2024-06-12', 200.60, 2),
(3, 2, 3, '2024-04-02',75.87, 1);


-- View the contents of each table

SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM products;
SELECT * FROM purchases;
