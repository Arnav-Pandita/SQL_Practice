--Here when we d left join with exam table, the col e.subject_name will also occur, and the exams which are not given will be NULL in this col.
--Then when we group, we can simply find the count of e.subjects which tells how many exams were given

select s.student_id,s.student_name,su.subject_name,count(e.subject_name) as attended_exams
from Students s
cross join Subjects su
left join Examinations e
on s.student_id=e.student_id and su.subject_name=e.subject_name
group by s.student_id,s.student_name,su.subject_name
order by s.student_id,su.subject_name;
