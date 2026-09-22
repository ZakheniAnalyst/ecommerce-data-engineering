SELECT *
FROM {{ ref('fct_order_items') }}
WHERE UNIT_COST < 0