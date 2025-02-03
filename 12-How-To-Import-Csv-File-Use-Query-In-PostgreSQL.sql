CREATE TABLE employee2(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date DATE,	
	age INT	
);

SELECT * FROM employee2;

COPY
employee2(employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'D:\GiHubProjects\PostgreSQL-Basics-for-All\CSV files & Docx\employees_data_Queries-Operators.csv'
DELIMITER','
CSV HEADER;
