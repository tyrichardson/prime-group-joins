--Get all customers and their addresses.
SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

--Get all orders and their line items.
SELECT * FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

--Which warehouses have cheetos?
SELECT "warehouse", "description"
FROM "warehouse" JOIN "warehouse_product" ON
"warehouse"."id" = "warehouse_product"."warehouse_id" JOIN
  "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "product_id" = 5;

--Which warehouses have diet pepsi?
SELECT "warehouse", "description"
FROM "warehouse" JOIN "warehouse_product" ON
"warehouse"."id" = "warehouse_product"."warehouse_id" JOIN
  "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "product_id" = 6;


--Get the number of orders for each customer.
  --NOTE: It is OK if those without orders are not included in results.


--How many customers do we have?
SELECT count(*) FROM "customers";

--How many products do we carry?
SELECT count(*) FROM "products";

--What is the total available on-hand quantity of diet pepsi?
