INSERT INTO Customers (customer_name, city, signup_date) VALUES
('Akhilesh', 'Hubli', '2023-01-12'),
('Rahul', 'Bangalore', '2023-02-21'),
('Sneha', 'Pune', '2023-03-15'),
('Manoj', 'Hubli', '2023-04-10'),
('Anita', 'Mumbai', '2023-05-09');

INSERT INTO Products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Phone', 'Electronics', 30000),
('Headphones', 'Accessories', 2000),
('T-Shirt', 'Fashion', 800),
('Shoes', 'Fashion', 2000);

INSERT INTO Orders (customer_id, order_date, city) VALUES
(1, '2023-06-01', 'Hubli'),
(2, '2023-06-05', 'Bangalore'),
(3, '2023-06-10', 'Pune'),
(4, '2023-06-12', 'Hubli'),
(5, '2023-06-15', 'Mumbai'),
(2, '2023-06-20', 'Bangalore'),
(1, '2023-06-25', 'Hubli');

INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 2, NULL),
(3, 3, 2),
(4, 4, 3),
(5, 5, 1),
(6, 2, 1),
(7, 1, 1);