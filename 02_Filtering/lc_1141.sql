--If I want counts of each only once, then simply use DISTINCT, instead of subquery

select activity_date as day, count(distinct user_id) as active_users
from Activity
where activity_date >= '2019-07-27'::date -interval '29 days'  --In interval, that date is also included so 29 days,
      and activity_date<='2019-07-27'
group by activity_date;
