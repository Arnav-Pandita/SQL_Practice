--DataLemur
--This concept is Nested Aggregation where we ae using *group by* in the inner query and outer query also.
--

SELECT tweet_bucket,count(user_id) as users_num
from (
 select user_id,count(user_id) as tweet_bucket
 from tweets         
 where EXTRACT('year' from tweet_date)='2022'
 group by user_id
)t --name of the table
group by tweet_bucket; 
