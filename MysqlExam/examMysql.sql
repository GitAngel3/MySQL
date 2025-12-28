CREATE TABLE CREATE DATABASE databasename; 
Employees (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Leave INT
);
CREATE TABLE Exam (
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

INSERT INTO `Employees` (`id`, `Name`, `Department`, `Leaves`)
 VALUES (1, 'Raju', 'Sales', 1),
(2, 'Sangeetha', 'Sales', 3),
(3, 'Vinay', 'Operations', 8),
(4, 'Abey', 'Packing', 2),
(5, 'Thomas', 'Packing', 1),
(6, 'Muneer', 'Operations', 7),
(7, 'Aparna', 'Sales', 3),
(8, 'Abid', 'Operations', 9),
(9, 'Fathima', 'Sales', 11),
(10, 'Varghese', 'Operations', 14);


INSERT INTO `exam`(`id`, `Employee_id`, `exam_status`)
VALUES (1,2,'Pass'),
(2,5,'Fail'),
(3,1,'Fail'),
(4,8,'Pass'),
(5,3,'Pass'),
(6,1,'Pass'),
(7,6,'Fail'),
(8,9,'Pass'),
(9,10,'Pass');


















CREATE DATABASE exam2; 
CREATE TABLE Employees (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Leaves INT
);
CREATE TABLE Exam (
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

INSERT INTO `Employees` (`id`, `Name`, `Department`, `Leaves`)
 VALUES (1, 'Raju', 'Sales', 1),
(2, 'Sangeetha', 'Sales', 3),
(3, 'Vinay', 'Operations', 8),
(4, 'Abey', 'Packing', 2),
(5, 'Thomas', 'Packing', 1),
(6, 'Muneer', 'Operations', 7),
(7, 'Aparna', 'Sales', 3),
(8, 'Abid', 'Operations', 9),
(9, 'Fathima', 'Sales', 11),
(10, 'Varghese', 'Operations', 14);


INSERT INTO `exam`(`id`, `Employee_id`, `exam_status`)
VALUES (1,2,'Pass'),
(2,5,'Fail'),
(3,1,'Fail'),
(4,8,'Pass'),
(5,3,'Pass'),
(6,1,'Pass'),
(7,6,'Fail'),
(8,9,'Pass'),
(9,10,'Pass');

--Write a query to get the list of employees who took more than 5 leaves and are in sales department
SELECT * FROM Employees
WHERE Leaves > 5 AND Department = 'Sales';

--Write a query to get the number of employees working in operations department
SELECT COUNT(*) AS NumberOfEmployees FROM Employees
WHERE Department = 'Operations';

--Write a single query to get the count of employees working in each department
SELECT Department,COUNT(*)  FROM Employees
GROUP BY Department;

--Write a query to list the departments where all its employee altogether took more than 10 leaves
SELECT Department, SUM(Leaves) AS Total_leave
FROM employees
GROUP BY Department
HAVING SUM(Leaves) > 10;

-- Write a query to list all the employee names who have passed the exam
SELECT * from exam
inner join employees 
on employees.id = exam.employee_id 
where exam_status = 'Pass';


-- Write a query to list all the employee names who have not attended the exam
SELECT name
FROM employees
WHERE id NOT IN (SELECT employee_id FROM exam);

SELECT * from employees e 
left join exam l on e.id = l.employee_id 
where l.id is null

SELECT * from employees 
inner join exam 
on employees.id = exam.id 
where employee_id = null;

SELECT e.name
FROM employees e
LEFT JOIN exam ex
ON e.id = ex.employee_id
WHERE ex.employee_id IS NULL;
