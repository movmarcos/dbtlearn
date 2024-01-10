SELECT
    listing_id,
    minimum_nights
FROM
    {{ ref("dim_listings_cleansed") }}
WHERE minimum_nights < 1
LIMIT 100