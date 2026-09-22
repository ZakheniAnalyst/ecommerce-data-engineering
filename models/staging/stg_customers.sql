SELECT
    "customer_id",
    "signup_date",
    "channel",
    "country"
FROM {{ source('raw', 'customers') }}