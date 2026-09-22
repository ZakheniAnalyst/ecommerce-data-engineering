SELECT
    oi."order_item_id",
    oi."order_id",
    oi."product_id",
    oi."quantity",
    oi."unit_price",

    o."customer_id",
    o."order_ts",
    o."status",

    p."product_name",
    p."category",
    p."unit_cost",

    oi."quantity" * oi."unit_price" AS revenue,

    oi."quantity" * p."unit_cost" AS total_cost,

    (oi."quantity" * oi."unit_price")
        - (oi."quantity" * p."unit_cost") AS profit


FROM {{ ref('stg_order_items') }} AS oi

LEFT JOIN {{ ref('stg_orders') }} AS o
    ON oi."order_id" = o."order_id"

LEFT JOIN {{ ref('stg_products') }} AS p
    ON oi."product_id" = p."product_id"