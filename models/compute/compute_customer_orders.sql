{{
  config(
    materialized = "table",
  )
}}
-- Creating order stats per customer
select
    o.customer_name,

    min(o.created_at) as first_order_at,
    max(o.created_at) as last_order_at,

    count(distinct o.order_id) as num_orders,
    sum(od.amount_dollars) as total_dollars
from {{ ref('base_orders') }} o
    left join {{ ref('base_order_details') }} od
        on o.order_id = od.order_id
group by 1