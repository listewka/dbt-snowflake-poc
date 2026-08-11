SELECT
    R.REVIEW_ID,
    R.LISTING_ID,
    L.HOST_ID,
    R.REVIEW_RATE,
    R.REVIEW_DATE
FROM {{ ref('cln_reviews')}} R
    JOIN {{ ref('cln_listings')}} L
        USING (LISTING_ID)