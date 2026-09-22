SELECT
    "order_id" AS ORDER_ID,
    "customer_id" AS CUSTOMER_ID,
    "order_ts" AS ORDER_TS,
    "status" AS STATUS,
    order_revenue,
    order_cost,
    order_profit,
    item_count

FROM {{ ref('int_orders') }}