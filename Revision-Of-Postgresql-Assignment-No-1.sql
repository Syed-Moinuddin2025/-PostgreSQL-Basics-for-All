-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(20),
    salary DECIMAL(10, 2) ,
    joining_date DATE ,
    age INT 
);

COPY
employees(employee_id, first_name, last_name,  department, salary, joining_date, age)
FROM 'D:\GiHubProjects\SQL-Basics-for-All\employees_data.csv'
DELIMITER','
CSV HEADER;

SELECT * FROM employees;

-- Q1: Retrieve all employees’ first_name and their departments.
    SELECT first_name,department FROM employees;
-- Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
    
-- Q3: Delete all employees who are older than 34 years.
    
    SELECT * FROM employees ORDER By employee_id ASC;
-- Q4: Add a new column `email` to the `employees` table.
    
-- Q5: Rename the `department` column to `dept_name`. 
   
-- Q6: Retrieve the names of employees who joined after January 1, 2021.
    
-- Q7: Change the data type of the `salary` column to `INTEGER`.
   
    
-- Q8: List all employees with their age and salary in descending order of salary.
    
-- Q9: Insert a new employee with the following details: 
-- (employee_id,'Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
    
-- Q10: Update age of employee +1 to every employee 
    
-- Q11: Find all employees who joined after 2022-01-01.
    
-- Q12: Find the average salary of employees in each department.
    
-- Q13: Find employees who are older than 30 years.
    
-- Q14: Find the highest salary in the IT department.
    
-- Q15: Update the email column for all employees with appropriate values.
    
-- Q16: Find the total number of employees in each department.
    
-- Q17: Sort employees by their joining_date from the newest to the oldest.
    
-- Q18: Retrieve employees whose salary is between 50,000 and 70,000.
    
-- Q19: Find employees who have 'a' in their first name.
   
-- Q20: Count the total number of employees in the table.
  
-- Q21: Retrieve employees grouped by their department, sorted by department name.
    
-- Q22: Find employees who joined in the year 2023.
    
-- Q23: Delete all employees who belong to the 'HR' department.
    
-- Q24: Retrieve the minimum salary in the company.
    
-- Q25: Retrieve employees whose age is NULL.
    
SELECT * FROM employees ORDER BY employee_id  ASC;