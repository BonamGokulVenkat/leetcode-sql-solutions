# Write your MySQL query statement below

select distinct d.name as Department , e1.name as Employee , e1.salary as Salary 
from Employee as e1 inner join Department as d 
on e1.departmentId= d.id 
where 3 > (select count(distinct e2.salary) 
            from Employee e2
            where e2.Salary>e1.Salary
            and e1.departmentId=e2.departmentId);