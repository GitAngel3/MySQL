INSERT INTO `online_bookstore`(`book_id`, `title`, `author`, `price`, `stock`) 
    VALUES ('1','Learn SQL','John Smith','400','10'),
           ('2','Mastering Python','Jane Doe','600','5'),
           ('3', 'HTML & CSS Basics', 'Alan Webb', '300', '8');

           
    UPDATE online_bookstore
SET price='450',stock=12;

UPDATE online_bookstore
SET stock='3'
WHERE price>500;