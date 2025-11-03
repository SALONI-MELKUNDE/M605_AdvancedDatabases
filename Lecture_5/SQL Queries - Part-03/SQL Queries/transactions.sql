select * from products;
select * from orders;


-- ================================================ Example # 01 =============================
START TRANSACTION;

-- Deduct stock
UPDATE Products
SET stock = stock - 5
WHERE product_id = 1;

-- Insert into Order_Details
INSERT INTO Order_Details (order_id, product_id, quantity, price_each)
VALUES (1, 1, 5, 50.00);

-- Update Orders total amount
UPDATE Orders
SET total_amount = total_amount + 250.00
WHERE order_id = 6;

COMMIT;  -- Commit the transaction

-- =============================================================== Example # 02 ================================

UPDATE Products
SET stock = 500
WHERE product_id = 1;
    
Delete from order_details where order_detail_id > 5;

CALL HandleOrder(1, 1, 505, 50.00);

Select * from products;
Select * from orders;
Select * from order_details;

-- =============================================================== Logging Task ================================
CALL ProcessOrderTransaction(6, 'Credit Card', 150.00);
Select * from orders;
Select * from transactions;

