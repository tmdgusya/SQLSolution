# Write your MySQL query statement below

DELETE P1.* FROM Person AS P1, Person AS P2 WHERE P1.Email = P2.Email AND P1.Id > P2.Id;

# Another Solution

DELETE FROM PERSON WHERE Id NOT IN (
    SELECT * FROM (
        SELECT MIN(Id) FROM Person GROUP BY Email
    ) AS RESULT
);

- Query 분석 : 
    - SELECT MIN(Id) FROM Person GROUP BY Email 
    - 동일 Email 중 가장 낮은 Id 의 값만 가져옴.

- 그렇게 가져온 것들 중 Id 가 없는 것에 대한 Query 가 날라감

# Another Solution 이 더빠름 .. Sorting 을 안해서인가? Group By 가
