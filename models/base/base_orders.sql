{{
  config(
    materialized = "table",
  )
}}
select
  -- Identifiers
  "Order ID" as order_id,

  -- Timestamps
  "Order Date" as created_at,

  -- Primary Data Fields
  CustomerName as customer_name,
  State as customer_state,
  City as customer_city

from {{ ref('Orders')}}
    