-- Comments in SQL Start with dash-dash --
--adds a new chair to the products db --
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'false');
--adds a new stool to the products db --
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, 'true');
--adds a new table to the products db --
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, 'false');
--displays all rows of the table --
SELECT * FROM products;
--displays just the names of items in the table --
SELECT name FROM products;
--displays the names and prices of items in the table --
SELECT name, price FROM products;
--adds a new couch to the products db --
INSERT INTO products (name, price, can_be_returned) VALUES ('couch', 999.99, 'false');
--displays the items in the table that can be returned --
SELECT * FROM products WHERE can_be_returned = true;
--displays the items in the table that have a price < 44.00 --
SELECT * FROM products WHERE price < 44.00;
--Display only the products that have a price in between 22.50 and 99.99.--
SELECT * FROM products WHERE price < 99.99 AND price > 22.50;
--There’s a sale going on: Everything is $20 off! Update the database accordingly.
UPDATE products SET price = price - 20;
--Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.
DELETE FROM products WHERE price < 25.00;
--And now the sale is over. For the remaining products, increase their price by $20.
UPDATE products SET price = price + 20;
--There is a new company policy: everything is returnable. Update the database accordingly.
UPDATE products SET can_be_returned = true;

