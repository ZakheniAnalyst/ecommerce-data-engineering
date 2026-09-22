SELECT *
FROM {{ ref('fct_order_items') }}
WHERE ABS((REVENUE - TOTAL_COST) - PROFIT) > 0.01