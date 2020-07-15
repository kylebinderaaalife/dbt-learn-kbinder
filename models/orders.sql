select * from
(select orderid as order_id, amount, id from raw.stripe.payment) as p

inner join {{ref('stg_orders')}}

on p.order_id = stg_orders.order_id
--where status = 'success'