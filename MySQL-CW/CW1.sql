INSERT INTO `students`(`id`, `name`, `age`, `department`, `grade`) 
VALUES ('1','William','23','Physics','78'),
      ('2','Steffy','21','Chemistry','80'),
      ('3','John','22','Biology','82'),
      ('4','Angel','23','Computer Science','80');

      SELECT * FROM `students` WHERE age>20;

      SELECT * FROM `students` WHERE department IN('Computer Science','Physics'); 

      SELECT * FROM `students` WHERE grade=90;

      SELECT * FROM `students` WHERE grade BETWEEN 70 AND 90;




SELECT column1, column2, COUNT(*) AS duplicate_count
FROM students
GROUP BY column1, column2
HAVING COUNT(*) > 1;