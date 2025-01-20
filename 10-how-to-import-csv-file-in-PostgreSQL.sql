-- Drop the table if it already exists
DROP TABLE IF EXISTS employee2;
-- Create the employees table
CREATE TABLE employee2 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(20),
    salary DECIMAL(10, 2) ,
    joining_date DATE ,
    age INT 
);

COPY
employee2(employee_id, first_name, last_name,  department, salary, joining_date, age)
FROM 'D:\GiHubProjects\SQL-Basics-for-All\employee_data_cleaned.csv'
DELIMITER','
CSV HEADER;

SELECT * FROM employee2;

 