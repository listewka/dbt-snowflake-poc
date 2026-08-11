
  
    

        create or replace transient table DEV.AIRBNB_curated.review_event_fact
         as
        (SELECT
    R.REVIEW_ID,
    R.LISTING_ID,
    L.HOST_ID,
    R.REVIEW_RATE,
    R.REVIEW_DATE
FROM DEV.AIRBNB_cleanse.cln_reviews R
    JOIN DEV.AIRBNB_cleanse.cln_listings L
        USING (LISTING_ID)
        );
      
  