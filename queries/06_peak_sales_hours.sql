-- Q6: What are the peak sales hours? Show total revenue and number of orders by hour of the day.

select * from orders;
select * from order_items;


select 	Date_format(o.order_time, '%h:00 %p') as peak_hours, 
sum(r.quantity*item_price) as total_revenue,
count(distinct(o.order_id)) as order_num
from orders as o
inner join order_items as r
on o.order_id = r.order_id
group by Date_format(o.order_time, '%h:00 %p'), hour(o.order_time)        
order by hour(o.order_time) Asc;

/* Insight:
The peak selling hour is 9am with $300.75 revenue (17.7% of daily total)
and 10 orders. Morning hours (8-10 AM) generate 45% of daily revenue, 
indicating optimal staffing and promotions during this time could boost sales further. */