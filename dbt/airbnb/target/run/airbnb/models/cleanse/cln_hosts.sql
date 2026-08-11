
  create or replace   view DEV.AIRBNB_cleanse.cln_hosts
  
   as (
    with RAW_HOSTS as (
    SELECT * FROM DEV.airbnb_raw.hosts
)
SELECT 
    ID AS HOST_ID,
    NAME AS HOST_NAME,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM RAW_HOSTS
  );

