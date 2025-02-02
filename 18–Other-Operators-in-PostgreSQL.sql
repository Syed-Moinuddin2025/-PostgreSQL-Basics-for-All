SELECT * FROM employees;


-- Find employees where the email column is NULL ( if applicable).

SELECT first_name, last_name, email
FROM employees
WHERE email IS NULL;


-- List employees sorted by salary in DESCENDING order.

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- Retrieve the top 5 highest-paid employees.

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

-- Retrieve a list of unique departments

SELECT COUNT (DISTINCT department) AS DEP_UNIQUE_COUNT
FROM employees;


