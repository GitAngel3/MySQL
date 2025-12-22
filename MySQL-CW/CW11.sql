--basic inventory system for a library
--Create a table named authors with the following:
--author_id which should increase automatically for every new author added

CREATE TABLE authors_11
(author_id int(8) AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(20) 
);

--Create another table named books with the following:
--book_id which should also increase automatically title of the book
--author_id which connects each book to an author
CREATE TABLE boobs_11
(book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(20),
 author_id INT,
 FOREIGN KEY (author_id) REFERENCES authors_11(author_id)
);



--Make sure that one author can have many books (one-to-many relationship).
--Create an index on the author_id column in the books table to improve search performance.

INSERT INTO `authors_11`(`author_id`, `name`) 
VALUES (1,'Sherlock Holmes'),
       (2,'Fyodor Dostoevsky'),
       (3,'William Shakespeare'),
       (4,'Leo Tolstoy');


       INSERT INTO `books_11`( `title`) VALUES ('A Case of Identity'),
(' Honoré de Balzacs'),
(' The Comedy of Errors'),
('War and Peace ');