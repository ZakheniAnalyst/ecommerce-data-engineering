SELECT
    "order_id",
    "customer_id",
    "order_ts",
    "status"
FROM {{ source('raw', 'orders') }}