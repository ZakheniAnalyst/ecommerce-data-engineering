SELECT
    "product_id" AS PRODUCT_ID,
    "product_name" AS PRODUCT_NAME,
    "category" AS CATEGORY,
    "unit_price" AS UNIT_PRICE,
    "unit_cost" AS UNIT_COST

FROM {{ ref('stg_products') }}