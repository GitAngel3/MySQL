INSERT INTO `books`(`id`, `title`, `author`, `price`, `genre`) 
VALUES ('101','The Great Gatsby','F. Scott Fitzgerald','819','Tragedy novel'),
       ('102','The Da Vinci Code','Dan Brown','450','Novel'),
       ('103','The Penguin History of Early India','Romila Thapar','400','History')
       ('104','Relativity, The Special And The General Theory','Albert Einstein','139','Science')
        ('105','THE GIRL ON THE TRAIN','Ruskin Bond','194','fiction');

        SELECT `id`, `title`, `author`, `price`, `genre` FROM `books` WHERE price>400;

        SELECT * FROM `books` WHERE genre IN ('History','Science','fiction');

        SELECT * FROM `books` WHERE title=('The Great Gatsby');

        SELECT * FROM `books` WHERE author<>('Dan Brown');

