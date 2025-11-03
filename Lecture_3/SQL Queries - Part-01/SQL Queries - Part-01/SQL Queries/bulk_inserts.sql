INSERT INTO Customers (first_name, last_name, email, phone_number, registration_date, country)
VALUES
('Alice', 'Brown', 'aliceb@example.com', '1111111111', '2024-02-10', 'UK'),
('Bob', 'Smith', 'bobsmith@example.com', '2222222222', '2024-03-25', 'Canada'),
('Charlie', 'Davis', 'charlied@example.com', '3333333333', '2024-05-30', 'Australia');


INSERT INTO Suppliers (supplier_name, contact_name, phone, country)
VALUES
('GadgetWorld', 'Susan Miller', '4444444444', 'France'),
('GlobalParts', 'Mark Johnson', '5555555555', 'Italy');


INSERT INTO Products (product_name, category, price, stock, supplier_id)
VALUES
('Smartphone', 'Electronics', 800.00, 30, 2),  -- Supplier ID = 2 (GadgetWorld)
('Tablet', 'Electronics', 600.00, 20, 3),  -- Supplier ID = 3 (GlobalParts)
('Wireless Mouse', 'Accessories', 50.00, 100, 1);  -- Supplier ID = 1 (TechSupply)


INSERT INTO Orders (customer_id, order_date, total_amount, o_status)
VALUES
(2, '2024-11-05', 800.00, 'Delivered'),  -- Customer ID = 2 (Alice Brown)
(3, '2024-11-10', 600.00, 'Pending');  -- Customer ID = 3 (Bob Smith)


INSERT INTO Order_Details (order_id, product_id, quantity, price_each)
VALUES
(2, 2, 1, 800.00),  -- Order ID = 2, Product ID = 2 (Smartphone)
(3, 3, 1, 600.00);  -- Order ID = 3, Product ID = 3 (Tablet)

INSERT INTO Transactions (order_id, transaction_date, payment_method, amount)
VALUES
(2, '2024-11-05', 'PayPal', 800.00),  -- Order ID = 2
(3, '2024-11-10', 'Debit Card', 600.00);  -- Order ID = 3

