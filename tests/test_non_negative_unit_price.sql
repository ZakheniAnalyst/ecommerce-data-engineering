SELECT *
FROM {{ ref('fct_order_items') }}
WHERE UNIT_PRICE < 0