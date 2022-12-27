use dukaan;

-- find total quantity sale
select sum(quantity) from orders;

select * from orders;

use dukaan;

-- find total quantity sale per customer
select customer_id, sum(quantity) from orders group by customer_id;

select * from orders;

-- find total quantity sale per customer, also show customer name
select o.customer_id, c.fullname, sum(o.quantity) 
from orders as o
left join customers as c
on o.customer_id=c.customer_id
group by customer_id;

use dukaan;

-- find total orders placed
select count(*) from orders;

select * from orders;


use dukaan;

-- find total customers
select count(customer_id) as total_customers from customers;

use dukaan;

-- find total customers per city
select city, count(*) from customers group by city;

use dukaan;

-- find total order per customer
select customer_id, count(*) from orders group by customer_id;

select * from orders;

use dukaan;

-- find date wise total orders
select order_date, count(*) from orders group by order_date;

use dukaan;

-- find quantity average sales
select avg(quantity) from orders;


use dukaan;

-- find customer who bought maximum quantity
select customer_id, sum(quantity) from orders group by customer_id 
order by sum(quantity) desc
limit 1;

-- find customer who placed maximum orders
select customer_id, count(*) from orders group by customer_id 
order by count(*) desc
limit 1;

select * from orders;

use dukaan;

-- find date on which we sale most number of quantity
select order_date, sum(quantity) from orders group by order_date 
order by sum(quantity) desc
limit 1;

-- find date on which we got most number of orders
select order_date, count(*) from orders group by order_date 
order by count(*) desc
limit 1;

-- find date on which we sale least number of quantity
select order_date, sum(quantity) from orders group by order_date 
order by sum(quantity) asc
limit 1;

-- find date on which we got least number of orders
select order_date, count(*) from orders group by order_date 
order by count(*) asc
limit 1;

select max(quantity) from orders;

select * from orders;
