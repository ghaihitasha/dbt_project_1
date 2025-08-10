{{
  config(
    materialized = "table",
  )
}}
select
  -- Identifiers
  "Order ID" as order_id,

  -- Primary Data Fields
  Amount as amount_dollars,
  Profit as revenue_dollars,
  Quantity as quantity,
  Category as category,
  "Sub-Category" as sub_category,
  PaymentMode as payment_mode

from {{ ref('Details')}}
    