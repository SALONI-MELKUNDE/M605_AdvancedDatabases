
-- Update the first customer
UPDATE Customers
SET email = 'newemail1@example.com', phone_number = '1234567890'
WHERE customer_id = 1;

Select * from customers where customer_id = 1;

-- Update the first product
UPDATE Products
SET price = 1999, stock = 150
WHERE product_id = 1;


-- Delete the product with product_id = 1
DELETE FROM Products
WHERE product_id = 35;
