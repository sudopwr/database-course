-- *********************************************
-- Create Store procedure
use dukaan;

delimiter //

create procedure SelectAllOrders () 
begin

select * from orders;

end //
delimiter ;

-- *********************************************
-- call store proceduce

call SelectAllOrders();

-- *********************************************
-- drop store proceduce

drop procedure if exists SelectAllOrders;



-- =============================================
-- ************************************
use dukaan;

delimiter //

create procedure DeleteOrders(in orderid varchar(10))
begin

delete from orders where order_id=orderid;

end //
delimiter ;

-- *************************************
call DeleteOrders("o5");

select * from orders;

-- *************************************
drop procedure if exists DeleteOrders;

-- ===========================================
-- ************************************
use dukaan;

delimiter //

create procedure CountTotalCustomerOrder(in id varchar(10), out total_orders int)
begin

select count(order_id) into total_orders from orders where customer_id=id;

end //
delimiter ;

-- ************************************
call CountTotalCustomerOrder("c1", @total_orders);
select @total_orders;


-- ************************************
drop procedure if exists CountTotalCustomerOrder;

-- ************************************
use dukaan;

delimiter //

create procedure CountTotalOrder(inout total_orders int)
begin

select count(order_id) into total_orders from orders;

end //
delimiter ;

-- ************************************
set @total_orders=10;
call CountTotalOrder(@total_orders);
select @total_orders;

select count(*) from orders;

-- ************************************
drop procedure if exists CountTotalOrder;

-- ========================================
use dukaan;

set @orderid="o1";

select * from orders where order_id=@orderid;

select @orderid;
