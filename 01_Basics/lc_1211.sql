--Goes in each groups rows and finds rating/pos,  and ans should be in float so 1.0, or typecast
select query_name,
round(avg(1.0*rating/position),2) as quality,
round(count(case when rating<3 then 1 end)*100.0/count(*),2) as poor_query_percentage
from Queries
group by query_name;
