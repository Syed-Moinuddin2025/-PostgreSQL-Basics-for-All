DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);
-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

SELECT * FROM employees;
--Q1: Retrieve all employees’ first_name and their departments.
SELECT first_name,department
FROM employees;

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees
SET salary =salary+(salary*0.1)
WHERE department='IT';

--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees
WHERE age>34;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employees
ADD COLUMN	email VARCHAR(100);

--Q5: Rename the `department` column to `dept_name`. 
 ALTER TABLE employees
 RENAME COLUMN department TO dept_name	

 --Q6: Retrieve the names of employees who joined after January 1, 2021.
 SELECT first_name,last_name,joining_date 
 FROM employees
 WHERE joining_date > '2021-01-01';
 
 SELECT first_name,dept_name,joining_date
 FROM employees
 WHERE joining_date>='2022-01-01';
 SELECT * FROM employees;
--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE employees
ALTER COLUMN salary TYPE integer;

ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary :: INTEGER;

--Q8: List all employees with their age and salary in descending order of salary.
SELECT first_name,age,salary
FROM employees 
ORDER by salary DESC;

--Q9: Insert a new employee with the following details: 
-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
INSERT INTO employees (first_name,last_name,dept_name,salary,joining_date,age)
VALUES ('Raj','Singh','Marketing',60000,'2023-09-15',30);

--Q10: Update age of employee +1 to every employee 
UPDATE employees
SET age = age+1;

--Q11: Find all employees who joined after 2022-01-01.
SELECT * FROM employees
WHERE joining_date > '2022-01-01';

--Q12: Find the average salary of employees in each department.
SELECT dept_name, AVG(salary) AS avrage_Salary
FROM employees
GROUP BY dept_name;
--Q13: Find employees who are older than 30 years.
SELECT * FROM employees 
WHERE age >30;
--Q14: Find the highest salary in the IT department.
SELECT salary FROM employees
WHERE dept_name = 'IT'
ORDER By salary  DESC LIMIT 1;
--Q15: Update the email column for all employees with appropriate values.
UPDATE employees
SET email =LOWER (CONCAT(first_name,'@example.com')); 
--Q16: Find the total number of employees in each department
SELECT dept_name,COUNT(*) 
FROM employees
GROUP BY dept_name;
--Q17: Sort employees by their joining_date from the newest to the oldest.
SELECT * FROM employees
ORDER BY joining_date DESC;
SELECT * FROM employees ORDER BY employee_id  ASC