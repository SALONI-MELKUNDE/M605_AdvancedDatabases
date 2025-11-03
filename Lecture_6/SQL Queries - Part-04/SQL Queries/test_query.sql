

select *from customers;
select *from orders;

delete from customers;
delete from orders;
delete from transactions;
delete from suppliers;
delete from products;
delete from order_details;


Select * from customers;

Select* from customers order by last_name ASC, email DESC;

Select distinct(customers.first_name) from customers;

Select*from products;
Select avg(products.price) from products;

Select *from customers;
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM Customers;

SELECT orders.order_id AS Ids, orders.total_amount As Amount, IF(total_amount > 100, 'High', 'Low') AS "Order Type"
FROM Orders;

Select * from customers;
SELECT first_name As "First Name", last_name As "Last Name", country AS Country,
       CASE
           WHEN country = 'USA' THEN 'North America'
           WHEN country = 'Canada' THEN 'North America'
           WHEN country IN('Germany', 'UK') THEN 'Europe'
           ELSE 'Other'
       END AS Region
FROM Customers;


SELECT o_status AS "Order Status"
FROM Orders
GROUP BY o_status;

SELECT o_status AS "Order Status", COUNT(*) AS "Order Count"
FROM Orders
GROUP BY o_status;


SELECT category AS Category, Round(AVG(price),2) AS "Average Price"
FROM Products
GROUP BY category
HAVING AVG(price) > 20;

select * from customers;

SELECT customers.first_name, customers.last_name, orders.total_amount
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;
