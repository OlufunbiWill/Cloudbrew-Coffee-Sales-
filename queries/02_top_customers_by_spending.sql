-- Q2: Who are our top 10 customers by total spending?

select * from customers;
select * from orders;

select 
concat(c.firstname, ' ', c.lastname) as customer_name,
sum(o.total_amount) as total_spent
from customers as c
inner join orders as o
on c.customer_id = o.customer_id
group by c.firstname,c.lastname
order by total_spent desc
limit 10;

/* Insight:
The result shows that the top 10 customers have fairly even spending
ranging between $23-$31. Harper Jackson leads at $30.50. 
*/