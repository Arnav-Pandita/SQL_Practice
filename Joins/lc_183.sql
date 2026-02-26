--Here left join and those who have not placed orders, for them the customerId will be NULL


select c.name as Customers 
from Customers c
left join Orders o
on c.id=o.customerId
where o.customerId is NULL;
