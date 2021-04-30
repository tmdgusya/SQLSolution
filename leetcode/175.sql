# Write your MySQL query statement below
SELECT Person.FirstName, Person.LastName, Address.City, Address.State 
FROM Person left outer join Address on Person.PersonId = Address.PersonId;
