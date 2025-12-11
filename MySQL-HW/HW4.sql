INSERT INTO `book_database`(`id`, `title`, `author`, `price`, `stock`) 
VALUES ('1', 'The Alchemist', 'Paulo Coelho', 350, 50),
       ('2', 'Atomic Habits', 'James Clear', 450, 40),
       ('3', 'The Psychology of Money', 'Morgan Housel', 400, 30),
       ('4', 'Ikigai', 'Francesc Miralles', 300, 60),
       ('5', 'Deep Work', 'Cal Newport', 500, 20);

       --Display all books that cost less than 450 and have stock more than 30.
        SELECT * FROM `book_database` 
        WHERE price<'450' AND stock>'40';

       --Update the stock to 45 and reduce the price to 420 for the book titled ‘Deep Work’.
       UPDATE `book_database` 
       SET stock='45',price='420'
       WHERE title='Deep Work';


--Delete the book titled ‘Ikigai’.
        DELETE FROM `book_database` 
        WHERE title='Ikigai';

--Show the average book price and total number of books currently in the table.
   SELECT 
   AVG(price) AS average_price,
    COUNT(*) AS total_books
FROM `book_database` ;


--Display the top 3 most expensive books available.