use mydb;

show tables;

select *
from orders
inner join order_details on order_details.order_id = orders.id
inner join shippers on shippers.id = orders.shipper_id
inner join employees on employees.employee_id = orders.employee_id
inner join customers on customer_id = orders.customer_id
inner join products on products.id = order_details.product_id
inner join suppliers on suppliers.id = products.supplier_id
inner join categories on categories.id = products.category_id
;
 