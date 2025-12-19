--for two tables:employees & departments 

INSERT INTO `employees`(`id`, `name`)
VALUES (1,'Anjali'),(2,'Rohan'),(3,'Meena');

INSERT INTO `departments`(`emp_id`, `department_name`)
VALUES (1,'HR'),(2,'IT'),(4,'Finance');

--Show a list of all employees along with their department name. If an employee doesn’t belong to any department, still show their name with “NULL” for the department.
--Show only those employees who have a department assigned.
--how all department assignments, even if the employee doesn’t exist in the employee table-- employees table
