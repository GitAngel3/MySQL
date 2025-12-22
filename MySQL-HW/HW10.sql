--simple database for an online book store. The store keeps track of authors and the books they write.
--Create a table for authors with the following information:
Author ID (a unique number for each author)
Author name (e.g., "Chetan Bhagat")
Email address (should be unique)

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

--Create a table for books with the following information:

CREATE TABLE book_s10 (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(200) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


--Apply appropriate rules so that:
--No two authors can have the same email address.
--Each author and book must have a unique ID.

INSERT INTO authors VALUES (1, 'Chetan Bhagat', 'chetan@email.com');

INSERT INTO books VALUES (101, 'Half Girlfriend', 1);

--Each book must be linked to an existing author.

