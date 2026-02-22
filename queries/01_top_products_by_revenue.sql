-- Q1: What are our top 5 best-selling products by revenue?

Select * from products;
select * from order_items;

select
 p.product_name,
 sum( i.quantity * i.item_price) as total_revenue
from products as p
join order_items as i
on p.product_id = i.product_id
group by p.product_name, p.product_id
order by total_revenue desc
limit 5;

/* Insight: 
The top 5 best selling products are Turkey Sandwich, Caesar Salad
,Iced Tea, Latte, and Caramel Macchiato. Turkey sandwich and Caesar Salad generate the most revenue.
*/