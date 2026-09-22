SELECT
    "event_id",
    "session_id",
    "customer_id",
    "event_type",
    "event_ts"
FROM {{ source('raw', 'events') }}