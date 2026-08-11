
  
    

        create or replace transient table DEV.AIRBNB_curated.review_dim
         as
        (SELECT 
    HASH(LISTING_ID, REVIEW_DATE, REVIEWER_NAME, COMMENTS) AS REVIEW_ID,
    COMMENTS,
    SENTIMENT
FROM DEV.AIRBNB_cleanse.cln_reviews
        );
      
  