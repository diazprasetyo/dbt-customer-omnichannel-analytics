-- Use the OMNI_MANAGEMENT database
USE OMNI_MANAGEMENT;

-- Clear existing data (if needed)
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE visitHistory;
TRUNCATE TABLE purchaseHistory;
TRUNCATE TABLE customers;
TRUNCATE TABLE products;
TRUNCATE TABLE channels;
SET FOREIGN_KEY_CHECKS = 1;

-- Insert data into channels table (only 5 most important channels)
INSERT INTO channels (channel_name) VALUES
('Website'),
('Mobile App'),
('Retail Store'),
('Social Media'),
('Email Marketing');

-- Insert data into products table
INSERT INTO products (product_name, unit_price) VALUES
('Smartphone X', 899.99),
('Wireless Headphones', 199.99),
('Smart Watch', 349.99),
('Laptop Pro', 1299.99),
('Tablet Ultra', 599.99),
('Bluetooth Speaker', 79.99),
('4K Monitor', 399.99),
('Gaming Mouse', 59.99),
('Mechanical Keyboard', 129.99),
('External SSD 1TB', 149.99),
('Wireless Charger', 39.99),
('USB-C Hub', 49.99),
('Graphics Card', 699.99),
('Router Pro', 179.99),
('Smart Home Hub', 129.99),
('Fitness Tracker', 89.99),
('Digital Camera', 499.99),
('Portable Power Bank', 69.99),
('VR Headset', 299.99),
('Drone Explorer', 799.99);

-- Insert data into customers table
INSERT INTO customers (name, date_birth, email_address, phone_number, country) VALUES
('John Smith', '1985-03-12', 'john.smith@example.com', '+1-555-123-4567', 'United States'),
('Emma Johnson', '1990-07-25', 'emma.j@example.com', '+1-555-234-5678', 'United States'),
('Michael Brown', '1978-11-04', 'michael.b@example.com', '+1-555-345-6789', 'United States'),
('Sophia Garcia', '1992-05-18', 'sophia.g@example.com', '+1-555-456-7890', 'United States'),
('William Lee', '1983-09-30', 'william.l@example.com', '+44-20-1234-5678', 'United Kingdom'),
('Olivia Chen', '1995-02-14', 'olivia.c@example.com', '+86-10-1234-5678', 'China'),
('James Wilson', '1980-06-22', 'james.w@example.com', '+1-555-567-8901', 'Canada'),
('Ava Martinez', '1988-12-07', 'ava.m@example.com', '+52-55-1234-5678', 'Mexico'),
('Alexander Petrov', '1975-04-29', 'alex.p@example.com', '+7-495-123-4567', 'Russia'),
('Isabella Kim', '1993-10-11', 'isabella.k@example.com', '+82-2-1234-5678', 'South Korea'),
('Noah Singh', '1982-08-03', 'noah.s@example.com', '+91-22-1234-5678', 'India'),
('Charlotte Müller', '1991-01-19', 'charlotte.m@example.com', '+49-30-1234-5678', 'Germany'),
('Daniel Nakamura', '1979-07-06', 'daniel.n@example.com', '+81-3-1234-5678', 'Japan'),
('Mia Santos', '1994-05-23', 'mia.s@example.com', '+55-11-1234-5678', 'Brazil'),
('Ethan Ahmed', '1987-11-14', 'ethan.a@example.com', '+20-2-1234-5678', 'Egypt'),
('Amelia Dubois', '1996-03-08', 'amelia.d@example.com', '+33-1-1234-5678', 'France'),
('Benjamin Costa', '1981-09-17', 'benjamin.c@example.com', '+351-21-1234-5678', 'Portugal'),
('Harper Andersson', '1989-04-02', 'harper.a@example.com', '+46-8-1234-5678', 'Sweden'),
('Lucas Rossi', '1977-12-25', 'lucas.r@example.com', '+39-06-1234-5678', 'Italy'),
('Evelyn Wong', '1997-08-09', 'evelyn.w@example.com', '+852-1234-5678', 'Hong Kong');

-- Insert data into purchaseHistory table (adjusted for 5 channels)
INSERT INTO purchaseHistory (customer_id, product_sku, channel_id, quantity, discount, order_date) VALUES
(1, 1, 1, 1, 0.00, '2023-01-15 10:23:45'),
(2, 3, 2, 1, 0.10, '2023-01-16 14:34:12'),
(3, 5, 3, 2, 0.05, '2023-01-20 11:45:33'),
(4, 2, 1, 1, 0.00, '2023-01-22 09:12:55'),
(5, 4, 3, 1, 0.15, '2023-01-25 16:29:47'),
(6, 7, 2, 1, 0.00, '2023-02-01 13:44:21'),
(7, 10, 3, 2, 0.20, '2023-02-05 10:05:17'),
(8, 6, 5, 3, 0.10, '2023-02-10 15:33:08'),
(9, 9, 1, 1, 0.00, '2023-02-15 12:19:52'),
(10, 8, 4, 2, 0.05, '2023-02-20 17:24:39'),
(11, 12, 5, 1, 0.00, '2023-02-25 09:55:14'),
(12, 15, 4, 1, 0.15, '2023-03-01 14:02:33'),
(13, 14, 2, 1, 0.10, '2023-03-05 11:37:58'),
(14, 11, 5, 2, 0.00, '2023-03-10 16:48:26'),
(15, 13, 3, 1, 0.05, '2023-03-15 13:22:41'),
(16, 20, 2, 1, 0.20, '2023-03-20 10:58:07'),
(17, 17, 1, 1, 0.00, '2023-03-25 15:29:36'),
(18, 18, 4, 3, 0.10, '2023-04-01 12:42:19'),
(19, 16, 5, 2, 0.05, '2023-04-05 09:15:44'),
(20, 19, 1, 1, 0.15, '2023-04-10 17:34:21');

-- Insert data into visitHistory table (adjusted for 5 channels)
INSERT INTO visitHistory (customer_id, channel_id, visit_timestamp, bounce_timestamp) VALUES
(1, 1, '2023-01-15 10:00:12', '2023-01-15 10:45:22'),
(2, 2, '2023-01-16 14:12:33', '2023-01-16 14:55:17'),
(3, 3, '2023-01-20 11:22:05', '2023-01-20 11:58:40'),
(4, 1, '2023-01-22 08:55:18', '2023-01-22 09:23:45'),
(5, 3, '2023-01-25 16:05:31', '2023-01-25 16:42:09'),
(6, 2, '2023-02-01 13:17:42', '2023-02-01 14:03:18'),
(7, 3, '2023-02-05 09:42:58', '2023-02-05 10:27:33'),
(8, 5, '2023-02-10 15:11:24', '2023-02-10 15:58:45'),
(9, 1, '2023-02-15 11:59:37', '2023-02-15 12:34:12'),
(10, 4, '2023-02-20 17:03:51', '2023-02-20 17:45:29'),
(11, 5, '2023-02-25 09:28:06', '2023-02-25 10:12:48'),
(12, 4, '2023-03-01 13:37:19', '2023-03-01 14:24:07'),
(13, 2, '2023-03-05 11:14:25', '2023-03-05 11:59:36'),
(14, 5, '2023-03-10 16:25:42', '2023-03-10 17:10:53'),
(15, 3, '2023-03-15 12:56:08', '2023-03-15 13:42:27'),
(16, 2, '2023-03-20 10:33:54', '2023-03-20 11:18:21'),
(17, 1, '2023-03-25 15:04:13', '2023-03-25 15:51:02'),
(18, 4, '2023-04-01 12:19:29', '2023-04-01 13:05:38'),
(19, 5, '2023-04-05 08:51:46', '2023-04-05 09:36:24'),
(20, 1, '2023-04-10 17:08:02', '2023-04-10 17:52:49');