-- Q5: How many orders does each customer have,and what's their average order value?

select * from customers;
select * from orders;


select concat(c.firstname, ' ', c.lastname) as customer_name,
count(distinct o.order_id) as order_count,
round (avg(o.total_amount),2) as avg_order
from orders as o
inner join customers as c
on c.customer_id = o.customer_id
group by c.firstname, c.lastname
order by order_count Desc;

/* Insight:
Emma Johnson leads with 9 orders. 62% of customers have 6 orders eavh, while 
34% have 3 orders. The Average order value ramges from $5 to $15.50, showing consistent spending across all groups. 
*/