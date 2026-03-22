--✅ Check min + max (boundary condition) when ONLY within a range
  
select  p.product_id,product_name
from Sales s
join Product p
on p.product_id=s.product_id
group by p.product_id,product_name
having min(sale_date)>='2019-01-01' and
       max(sale_date)<='2019-03-31'; 
       
