 -- Here we had to use self join as the managers are also in the same table .
-- The join will make a row having the col of both the tables , and those will combine which follow the condition

select e.name as Employee
from Employee e
join Employee c
on e.managerId=c.id
where e.salary>c.salary;
