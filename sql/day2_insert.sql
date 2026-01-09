USE sales_db;

INSERT INTO customers VALUES
(1, 'Amit Sharma', 'amit@gmail.com', 'Mumbai', 'Maharashtra', '2023-01-10'),
(2, 'Priya Verma', 'priya@gmail.com', 'Delhi', 'Delhi', '2023-02-15'),
(3, 'Rahul Mehta', 'rahul@gmail.com', 'Ahmedabad', 'Gujarat', '2023-03-05'),
(4, 'Neha Singh', 'neha@gmail.com', 'Bengaluru', 'Karnataka', '2023-04-20');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Mobile Phone', 'Electronics', 25000),
(103, 'Office Chair', 'Furniture', 8000),
(104, 'Desk Lamp', 'Furniture', 2000);

INSERT INTO orders VALUES
(1001, 1, '2023-05-01'),
(1002, 2, '2023-05-03'),
(1003, 1, '2023-05-10'),
(1004, 3, '2023-05-15');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 104, 2),
(3, 1002, 102, 1),
(4, 1003, 103, 1),
(5, 1004, 101, 1),
(6, 1004, 104, 1);

INSERT INTO payments VALUES
(201, 1001, '2023-05-01', 'UPI', 64000),
(202, 1002, '2023-05-03', 'Credit Card', 25000),
(203, 1003, '2023-05-10', 'Debit Card', 8000),
(204, 1004, '2023-05-15', 'UPI', 62000);

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;

SELECT SUM(amount) AS total_revenue
FROM payments;

SELECT SUM(amount) AS total_revenue FROM payments;
