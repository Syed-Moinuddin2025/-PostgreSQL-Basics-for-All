SELECT * FROM employee2 ORDER BY employee_id ASC;

SELECT first_name, salary,dept_name, 
	 (salary*0.10) AS Bonus 
	 
FROM employee2 
WHERE dept_name = 'Operations';


--CALCULATE NEW SALARY
SELECT first_name, last_name, salary,
		(salary*12) AS annual_salary,
		(salary*0.05) AS increment_slary,
		(salary + salary*0.05) as new_salary,
		(salary *1.05) AS new_salary2
FROM employee2;