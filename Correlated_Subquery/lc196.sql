-- Write your PostgreSQL query statement below
delete from Person p1
where exists (
    select 1
    from Person p2
    where p1.email=p2.email and p1.id>p2.id
);
--OR By aggregation 

-- DELETE FROM Person
-- WHERE id NOT IN (
--     SELECT MIN(id)
--     FROM Person
--     GROUP BY email
-- );
