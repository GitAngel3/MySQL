INSERT INTO `mobile_store`(`id`, `brand`, `model`, `price`, `stock`) 
VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),
       (2, 'Redmi', 'Note 12', 15000, 25),
       (3, 'Realme', 'Narzo 50', 13000, 20),
       (4, 'Samsung', 'Galaxy A23', 18000, 10);


SELECT brand, price, stock FROM mobile_store
WHERE price > 13000 OR stock < 15;

