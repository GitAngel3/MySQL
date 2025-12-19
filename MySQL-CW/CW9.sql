-- simple system for a local library. The librarian has two tables:books –borrowers 

--books table
INSERT INTO `books`(`book_id`, `title`) 
VALUES ('1','The Alchemist'),
('2',' The Power of Now'),
('3','Think and Grow Rich'),
('4','Clean Code');

--borrowers table
INSERT INTO `borrowers`(`borrower_id`, `name`, `book_id`) 
VALUES (101,'Alice',1),
(102,'Bob',2),
(103,'Charlie',NULL);

--Show the list of all books along with the name of the person who borrowed them (if borrowed)
SELECT books.book_id, books.title, borrowers.name AS borrower_name;


--Show the list of all borrowers along with the book details they borrowed (if any).
SELECT 
    borrowers.borrower_id,
    borrowers.name,
    books.book_id,
    books.title
FROM borrowers borrowers
LEFT JOIN books books
ON borrowers.book_id = books.book_id;



--Show the list of all books that have not been borrowed by anyone.
SELECT 
    books.book_id,
    books.title
FROM books books
LEFT JOIN borrowers borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

--Show the list of all borrowers even if they haven't borrowed any book.
SELECT 
    borrowers.borrower_id,
    borrowers.name,
    books.title
FROM borrowers borrowers
LEFT JOIN books books
ON borrowers.book_id = books.book_id;




