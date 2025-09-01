# Write your MySQL query statement below
select m1.machine_id , round(avg(m1.timestamp-m2.timestamp),3) as processing_time
from Activity m1 join Activity m2
on m1.machine_id = m2.machine_id and m1.process_id=m2.process_id and m1.activity_type='end' and m2.activity_type ='start'
group by m1.machine_id;