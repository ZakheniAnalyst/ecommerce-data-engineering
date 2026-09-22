SELECT
    "product_id",
    "product_name",
    "category",
    "unit_price",
    "unit_cost"
FROM {{ source('raw', 'products') }}