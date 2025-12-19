--for two tables:employees & departments 

INSERT INTO `employees`(`id`, `name`)
VALUES (1,'Anjali'),(2,'Rohan'),(3,'Meena');

INSERT INTO `departments`(`emp_id`, `department_name`)
VALUES (1,'HR'),(2,'IT'),(4,'Finance');

--Show a list of all employees along with their department name. If an employee doesn’t belong to any department, still show their name with “NULL” for the department.
SELECT employees.id, employees.name, departments.department_name
FROM employees employees
LEFT JOIN departments departments
ON employees.id = departments.emp_id;


--Show only those employees who have a department assigned.
SELECT employees.id, employees.name, departments.department_name
FROM employees employees
INNER JOIN departments departments
ON employees.id = departments.emp_id;


--how all department assignments, even if the employee doesn’t exist in the employee table-- employees table
SELECT employees.id, employees.name, departments.department_name
FROM employees employees
RIGHT JOIN departments departments
ON employees.id = departments.emp_id;

