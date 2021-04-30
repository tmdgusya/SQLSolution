# Write your MySQL query statement below
SELECT DISTINCT Email
FROM Person AS P
Where 1 < (
    SELECT COUNT(*) FROM Person WHERE Email = P.Email
)

# Solution

SELECT Email 
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;