-- add products info for chair
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'f');

-- Add product info for stool
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, 't');

-- Add product info for table
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, 'f');

-- Show all the rows and columns
SELECT * FROM products;

-- Show all of the product names.
SELECT name FROM products;

-- Show all names and prices.
SELECT name, price FROM products;

-- Adding a new product
INSERT INTO products (name, price, can_be_returned) VALUES ('scented candle', 24.99, 'f');

-- Products that can_be_returned
SELECT name FROM products WHERE can_be_returned;

-- Products with preice less than $44
SELECT name FROM products WHERE price < 44.00;

--Products with price between $22.50 and $99.99.
SELECT name, price FROM products WHERE price BETWEEN 22.50 AND 99.99;

--Updating database based on sales
UPDATE products SET price = price - 20

-- SOLD OUT ITEMS
DELETE FROM products WHERE price < 25;

--Sales over. Increase prices by $20.
UPDATE products SET price = price + 20;

--Everything is returnable
UPDATE products SET can_be_returned = 't';