INSERT INTO `products`(`id`, `name`, `category`, `price`, `in_stock`) 
VALUES ('1','Rice','grocery','450 price_with_tax','yes'),
       ('2','TShirt','dress','350', 'yes'),
       ('3','Watch','lifestyle','2000','yes'),
       ('4','A4Sheets','stationary','200','yes'),
       ('5','Mobilephone','electronics','25000 price_with_tax','yes');

   SELECT DISTINCT id,name,category,price,in_stock FROM products;
   SELECT * FROM `products` WHERE in_stock=('yes') AND price<500;

   SELECT * FROM `products` WHERE in_stock=('no') AND price>1000;

   SELECT name,price FROM products ORDER BY price DESC;

   SELECT name,price,price * 1.18 AS price_with_tax
FROM products;
