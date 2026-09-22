SELECT
    "order_item_id" AS ORDER_ITEM_ID,
    "order_id" AS ORDER_ID,
    "product_id" AS PRODUCT_ID,
    "customer_id" AS CUSTOMER_ID,
    "order_ts" AS ORDER_TS,
    "status" AS STATUS,
    "quantity" AS QUANTITY,
    "unit_price" AS UNIT_PRICE,
    "unit_cost" AS UNIT_COST,
    revenue,
    total_cost,
    profit

FROM {{ ref('int_order_items_enriched') }}