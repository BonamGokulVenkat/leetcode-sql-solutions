# Write your MySQL query statement below
select t.request_at as Day, round(sum(case when status='completed' then 0 else 1 end)/count(*),2)  as `Cancellation Rate`
from trips t 
join users u1
on t.client_id=u1.users_id and u1.role='client'
join users u2
on t.driver_id=u2.users_id and u2.role='driver'
where u1.banned='No'
and u2.banned='No'
and t.request_at between "2013-10-01" AND "2013-10-03"
group by t.request_at;