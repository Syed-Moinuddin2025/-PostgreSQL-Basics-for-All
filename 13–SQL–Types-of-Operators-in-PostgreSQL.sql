SELECT * FROM employee2 ORDER BY employee_id ASC;

--1) Retrieve the first_name, salary, and calculate a 10% bonus on the salary.
SELECT first_name, salary, 
	 (salary*0.10) AS Bonus 
FROM employee2;

--2) Calculate the Annual Salary and Salary Increment by 5% show the monthly new salary as well
--CALCULATE NEW SALARY
SELECT first_name, last_name, salary,
		(salary*12) AS annual_salary,
		(salary*0.05) AS increment_slary,
		(salary + salary*0.05) as new_salary,
		(salary *1.05) AS new_salary2
FROM employee2;