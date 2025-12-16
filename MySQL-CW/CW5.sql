INSERT INTO `mobile_store`(`id`, `brand`, `model`, `price`, `stock`) 
VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),
       (2, 'Redmi', 'Note 12', 15000, 25),
       (3, 'Realme', 'Narzo 50', 13000, 20),
       (4, 'Samsung', 'Galaxy A23', 18000, 10);



--Display all mobiles that cost more than 13000 or have stock less than 15.
SELECT brand, price, stock FROM mobile_store
WHERE price > 13000 OR stock < 15;


--Increase the stock by 5 and update the price to 12500 for the mobile with model = 'Narzo 50'.
UPDATE mobile_store
SET stock = '25', price= '12500'
WHERE model =  'Narzo 50';

--Delete the mobile whose id is 2.
DELETE FROM `mobile_store` 
WHERE id='2';

--Find the lowest and highest price in the table.
SELECT MIN(price),MAX(price)
FROM mobile_store;

--Find the total stock of all mobiles in the table.
SELECT SUM(price)
FROM mobile_store;


