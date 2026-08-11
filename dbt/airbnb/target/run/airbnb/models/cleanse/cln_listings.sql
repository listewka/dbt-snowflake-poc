
  create or replace   view DEV.AIRBNB_cleanse.cln_listings
  
   as (
    with RAW_LISTINGS as (
    SELECT * FROM DEV.airbnb_raw.listings
)
SELECT 
    ID AS LISTING_ID,
    NAME AS LISTING_NAME,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    HOST_ID,
    PRICE,
    CREATED_AT,
    UPDATED_AT
FROM RAW_LISTINGS
  );

