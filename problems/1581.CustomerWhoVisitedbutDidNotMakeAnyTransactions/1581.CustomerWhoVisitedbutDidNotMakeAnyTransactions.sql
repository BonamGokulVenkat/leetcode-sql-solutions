# Write your MySQL query statement below
select c.customer_id, count(c.visit_id) as count_no_trans 
from Visits as c left join Transactions as t
on c.visit_id=t.visit_id
where  transaction_id is null
group by c.customer_id;