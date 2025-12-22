--design a student registration system for a training institute.
--Create a table called students with the following information:
--student_id (a unique number for each student)
--name (student's name)
--email (each student must have a unique email address)

CREATE TABLE train_institute  (
student_id int NOT NULL,  
name varchar (15) NOT NULL,  
email varchar (15),
UNIQUE (student_id,email));

INSERT INTO `train_institute`(`student_id`, `name`, `email`)
VALUES (111,'Aleena','aleena@gmail.com'),
(112,'Ananthareshma','resh@gmail.com'),
(113,'Geena','geena@gmail.com'),
(114,'Ronand','ron@gamil.com');

--Create another table called courses with:
--course_id (a unique number for each course)
--course_name (name of the course)

CREATE TABLE courses  (
course_id int NOT NULL,  
course_name varchar (15) NOT NULL,  
UNIQUE (course_id));

INSERT INTO `courses`(`course_id`, `course_name`) 
VALUES (201,'Applied Electromagnetic Theory'),
(202,'Network Theory'),
(203,'Electronic Circuits'),
(204,'Analog Communication');

--Create a table called enrollments to store which student has enrolled in which course. This table should:
--Include student_id and course_id
CREATE TABLE enrollments  (
student_id int NOT NULL,
course_id int NOT NULL);


--Make sure both values must match existing records in the other two tables