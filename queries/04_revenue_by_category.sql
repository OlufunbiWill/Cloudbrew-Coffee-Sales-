-- Q4: Which product category generates the most revenue?

select * from products;
select * from order_items;

select p.category, 
sum(o.quantity * item_price) as revenue_amount
from products as p
inner join order_items as o
on p.product_id = o.product_id
group by p.category
order by revenue_amount Desc;


/* Insight: 
Coffee is the top performing product category,generating $413.00 in total revenue.*/