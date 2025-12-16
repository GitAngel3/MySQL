--Helping a small bookstore manage their online inventory system

--Create a new database called BookStoreDB.
CREATE DATABASE BookStoreDB

--Select this database to work on.
USE BookStoreDB;


--Create a table named authors with the following columns:
--author_id (number, primary key)
--name (text)
--country (text)
CREATE TABLE authors(
author_id int PRIMARY KEY,
name VARCHAR(20),country VARCHAR (20));

--Create another table named books with the following columns:
--book_id (number, primary key)
--title (text)
--price (number)
--author_id (foreign key referencing authors)

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    price DECIMAL(10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


--Add a new column called published_year (number) to the books table.
ALTER TABLE books
ADD published_year INT;


--Delete all rows from the books table without removing the table itself.
DELETE FROM books;

--Remove the BookStoreDB completely from the system.
DROP DATABASE BookStoreDB;
