# Write your MySQL query statement below

SELECT 
    (SELECT DISTINCT Employee.Salary
    FROM Employee
    ORDER BY Employee.Salary DESC
    limit 1 offset 1) 
AS SecondHighestSalary;
