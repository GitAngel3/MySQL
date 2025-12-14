INSERT INTO `books_online`(`id`, `title`, `author`, `genre`, `price`, `copies_sold`) 
VALUES (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

--Add the following 2 books into the bestsellers table:
INSERT INTO `bestsellers_books_online`(`id`, `title`, `author`, `genre`, `price`, `copies_sold`)
VALUES (4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

--Show the list of all books from both tables, displaying only the title and author.
SELECT title, author FROM books_online
UNION ALL
SELECT title, author FROM bestsellers;

--Display all books from the books table where the price is greater than 400.
SELECT * FROM books
WHERE price > 400;

--Show the average price of books in the books table.
SELECT AVG(price) AS average_price
FROM books_online;

--Display the number of books in the books table using a count.
SELECT COUNT(*) AS total_books
FROM books_onlineo;


--Show the title and author from books table with aliases Book Title and Written By.
SELECT title AS "Book Title",
       author AS "Written By"
FROM books;


