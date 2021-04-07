1. Get all customers and their addresses.
SELECT * FROM customers
JOIN addresses ON addresses.customer_id = customers.id;

2. Get all orders and their line items (orders, quantity and product).
SELECT *
FROM orders
JOIN line_items ON orders.id = line_items.order_id;

3. Which warehouses have cheetos?
SELECT warehouse.warehouse FROM products 
JOIN warehouse_product ON products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'cheetos';

4. Which warehouses have diet pepsi?
SELECT warehouse.warehouse FROM products 
JOIN warehouse_product ON products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'diet pepsi';

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


6. How many customers do we have?
SELECT COUNT(id) FROM customers;

7. How many products do we carry?
SELECT COUNT(id) FROM products;

8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM(warehouse_product.on_hand) FROM warehouse_product
JOIN products ON warehouse_product.product_id = products.id
WHERE products.id = 6;

