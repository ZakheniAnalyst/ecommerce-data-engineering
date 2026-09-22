SELECT
    "customer_id" AS CUSTOMER_ID,
    "signup_date" AS SIGNUP_DATE,
    "channel" AS CHANNEL,
    "country" AS COUNTRY

FROM {{ ref('stg_customers') }}