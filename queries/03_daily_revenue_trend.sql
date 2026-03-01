-- Q3: What is our daily revenue trend over the past month?

select * from orders;

select 
order_date, 
SUM(total_amount) as daily_revenue,
DAYNAME(order_date) as day_of_week
from orders
group by order_date 
order by order_date Asc;
 

 /* The daily revenue trend over the past month is fairly consistent,
 ranging from around $13 to $28.  