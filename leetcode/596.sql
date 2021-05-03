# Write your MySQL query statement below
SELECT class 
FROM (
    SELECT DISTINCT class, 
    student FROM courses
    ) AS class 
GROUP BY class 
HAVING COUNT(*) > 4;