-- Duplicate concept
-- Use #distinct# here as we want the name only once, which is repeating

select  distinct p.email as Email
from Person p
join Person c
on p.id!=c.id and p.email=c.email;
