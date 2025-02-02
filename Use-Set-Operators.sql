 
-- Create Table 1: Employees in Department A
CREATE TABLE DepartmentA (
    EmployeeID INT,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary INT
);

-- Insert data into Department A
INSERT INTO DepartmentA VALUES (101, 'Anil Sharma', 30, 'IT', 70000);
INSERT INTO DepartmentA VALUES (102, 'Sunita Rao', 28, 'IT', 65000);
INSERT INTO DepartmentA VALUES (103, 'Ravi Kumar', 35, 'HR', 60000);
INSERT INTO DepartmentA VALUES (104, 'Meena Devi', 40, 'HR', 75000);
INSERT INTO DepartmentA VALUES (105, 'Anuj Kapoor', 25, 'IT', 55000);
INSERT INTO DepartmentA VALUES (108, 'Rahul Singh', 38, 'IT', 75000);

-- Create Table 2: Employees in Department B
CREATE TABLE DepartmentB (
    EmployeeID INT,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary INT
);
 SELECT * FROM DepartmentA;
-- Insert data into Department B
INSERT INTO DepartmentB VALUES (106, 'Mohit Verma', 32, 'Finance', 80000);
INSERT INTO DepartmentB VALUES (107, 'Pooja Desai', 29, 'Finance', 70000);
INSERT INTO DepartmentB VALUES (108, 'Rahul Singh', 38, 'IT', 75000);
INSERT INTO DepartmentB VALUES (109, 'Rekha Yadav', 27, 'Marketing', 65000);
INSERT INTO DepartmentB VALUES (110, 'Tarun Mehta', 33, 'Marketing', 72000);
SELECT * FROM DepartmentB;

-- UNION: Combine rows from both tables without duplicates
SELECT * FROM DepartmentA
UNION
SELECT * FROM DepartmentB;

-- UNION ALL: Combine rows from both tables including duplicates
SELECT * FROM DepartmentA
UNION ALL
SELECT * FROM DepartmentB;

-- INTERSECT: Return common rows from both tables
SELECT * FROM DepartmentA
INTERSECT
SELECT * FROM DepartmentB;

-- EXCEPT: Return rows from Department A that are not in Department B
SELECT * FROM DepartmentA
EXCEPT
SELECT * FROM DepartmentB;

-- FULL OUTER JOIN: Combine rows from both tables, including non-matching rows
SELECT *
FROM DepartmentA
FULL OUTER JOIN DepartmentB
ON DepartmentA.EmployeeID = DepartmentB.EmployeeID;
