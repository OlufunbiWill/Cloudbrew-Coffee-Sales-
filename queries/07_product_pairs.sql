-- Q7: Which products are frequently bought together? 

select * from products;
select * from order_items;

select 
p1.product_name as product_1,
p2.product_name as product_2,
count(*) as times_bought_together
from order_items as oi1
join order_items as oi2
    on oi1.order_id = oi2.order_id
    and oi1.product_id < oi2.product_id
join products as p1 on oi1.product_id = p1.product_id
join products as p2 on oi2.product_id = p2.product_id
GROUP BY p1.product_id, p1.product_name, p2.product_id, p2.product_name
order by times_bought_together Desc;

/*Insight:
Turkey Sandwich and Iced Tea is the most ordered combo, appearing together
72 times. This pairing, along with other popular food-drink combinations, provides 
an opportunity for bundle deals and promotions to boost sales.*/