# Write your MySQL query statement below
SELECT E.Name AS Employee
FROM Employee as E, Employee as C
WHERE E.ManagerId = C.Id AND E.Salary > C.Salary