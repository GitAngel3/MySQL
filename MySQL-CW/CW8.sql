--Create a new database called GroceryShop.
CREATE DATABASE grocery_shop;



--Use that database.
--Create a table named products with the following details:
--product_id (number, should be the main identifier)
--product_name (text)
--price (number)
CREATE TABLE product(
product_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(20) NOT NULL,
price INT NOT NULL,
PRIMARY KEY (product_id));



--Later, you are asked to add a new column called category (text) to the same table.
ALTER TABLE product
ADD category VARCHAR(20);

--the shop owner wants to remove all items from the products table without deleting the table itself.
TRUNCATE TABLE products;

--Finally, delete the entire database as it’s no longer needed.
DROP DATABASE grocery_shop;
