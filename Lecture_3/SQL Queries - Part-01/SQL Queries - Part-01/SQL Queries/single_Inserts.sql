INSERT INTO Customers (first_name, last_name, email, phone_number, registration_date, country)
VALUES ('John', 'Doe', 'johndoe@example.com', '1234567890', '2024-01-15', 'USA');

INSERT INTO Suppliers (supplier_name, contact_name, phone, country)
VALUES ('TechSupply', 'Jane Smith', '9876543210', 'Germany');

INSERT INTO Products (product_name, category, price, stock, supplier_id)
VALUES ('Laptop', 'Electronics', 1200.00, 50, 1);  -- Supplier ID links to TechSupply

INSERT INTO Orders (customer_id, order_date, total_amount, o_status)
VALUES (1, '2024-10-01', 1200.00, 'Shipped');  -- Customer ID links to John Doe

INSERT INTO Order_Details (order_id, product_id, quantity, price_each)
VALUES (1, 1, 1, 1200.00);  -- Order ID and Product ID link to relevant rows

INSERT INTO Transactions (order_id, transaction_date, payment_method, amount)
VALUES (1, '2024-10-01', 'Credit Card', 1200.00);  -- Order ID links to the first order
