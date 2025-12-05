INSERT INTO `books_store`(`id`, `title`, `author`, `price`, `stock_status`, `genre`, `10%_gst_added`) 
VALUES  ('111','Don Quixote','Miguel de Cervantes','250','Out of Stock','comic novel','275'),
       ('131','1984','George Orwell','800','In stock','political fiction','880'),
       ('142','Pride and Prejudice','Jane Austen','1200','In stock','romantic fiction','1320'),
       ('161','Alices Adventures in Wonderland','Lewis Carroll','550','Out of Stock','childrens fiction','605');
SELECT DISTINCT id,title,author,price,stock_status,genre FROM books_store;

SELECT * FROM `books_store` WHERE stock_status=('in stock') AND price<400;

SELECT * FROM `books_store` WHERE stock_status='Out of Stock' OR price>700;

INSERT INTO `books_store`(`10% gst added`) VALUES ('275'),('880'),('1320'),('605');

DROP TABLE books_store;

SELECT title,price,'10%_gst_added' FROM books_store;

SELECT title,price,stock_status FROM books_store
   ORDER BY price DESC;



