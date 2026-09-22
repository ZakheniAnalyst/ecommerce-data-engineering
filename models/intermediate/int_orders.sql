SELECT
    "order_id",
    "customer_id",
    "order_ts",
    "status",

    SUM(revenue) AS order_revenue,
    SUM(total_cost) AS order_cost,
    SUM(profit) AS order_profit,

    COUNT("order_item_id") AS item_count

FROM {{ ref('int_order_items_enriched') }}

GROUP BY
    "order_id",
    "customer_id",
    "order_ts",
    "status"