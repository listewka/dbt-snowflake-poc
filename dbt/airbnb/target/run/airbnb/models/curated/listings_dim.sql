
  
    

        create or replace transient table DEV.AIRBNB_curated.listings_dim
         as
        (select 
    LISTING_ID,
    LISTING_NAME,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    PRICE,
    CREATED_AT,
    UPDATED_AT 
from DEV.AIRBNB_cleanse.cln_listings
        );
      
  