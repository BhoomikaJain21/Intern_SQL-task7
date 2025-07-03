-- View 1: Basic Join View
CREATE VIEW EmployeeDeptView AS
SELECT 
    e.name AS employee_name,
    d.department_name,
    e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;


-- View 2: High Salary Employees
CREATE VIEW HighSalaryView AS
SELECT name, salary FROM Employees
WHERE salary > 67000;


-- View 3: Count of Employees per Department
CREATE VIEW DeptEmployeeCount AS
SELECT 
    d.department_name,
    COUNT(e.emp_id) AS employee_count
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_name;


-- View 4: Secure View (No salary exposed)
CREATE VIEW PublicEmployeeList AS
SELECT name, department_id FROM Employees;


-- View 5: Filtered Insertable View WITH CHECK OPTION
CREATE VIEW SalesDeptView AS
SELECT * FROM Employees
WHERE department_id = 102
WITH CHECK OPTION;




-- Select from basic join view
SELECT * FROM EmployeeDeptView;


-- Get high earners
SELECT * FROM HighSalaryView;


-- Department-wise employee count
SELECT * FROM DeptEmployeeCount;


-- Public view without sensitive info
SELECT * FROM PublicEmployeeList;




DROP VIEW IF EXISTS EmployeeDeptView;
DROP VIEW IF EXISTS HighSalaryView;
DROP VIEW IF EXISTS DeptEmployeeCount;
DROP VIEW IF EXISTS PublicEmployeeList;
DROP VIEW IF EXISTS SalesDeptView;