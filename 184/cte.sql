# CTE

# Write your MySQL query statement below
WITH Temp AS (
    SELECT 
        e.Name AS 'EmployeeName',
        e.Salary AS 'EmployeeSalary', 
        e.DepartmentId AS 'EmployeeDepartmentId',
        d.Name AS 'DepartmentName'
    FROM Employee e
    JOIN Department d
    ON e.DepartmentId = d.Id
),
MaxSalary AS (
    SELECT DepartmentId, MAX(Salary)
    FROM Employee
    GROUP BY DepartmentId 
)

SELECT 
    Temp.DepartmentName AS 'Department',
    Temp.EmployeeName AS 'Employee',
    Temp.EmployeeSalary AS 'Salary'
FROM Temp
WHERE
    (EmployeeDepartmentId, EmployeeSalary)
    IN
    (SELECT * FROM MaxSalary)
;
