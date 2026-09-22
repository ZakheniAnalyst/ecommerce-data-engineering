SELECT *
FROM {{ ref('fct_order_items') }}
WHERE QUANTITY <= 0