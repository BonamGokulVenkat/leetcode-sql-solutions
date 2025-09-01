# Write your MySQL query statement below
select P.product_name , S.year, S.price 
from Product as P right join Sales as S
on P.product_id = S.product_id;