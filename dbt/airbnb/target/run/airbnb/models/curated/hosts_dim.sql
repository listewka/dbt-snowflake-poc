
  
    

        create or replace transient table DEV.AIRBNB_curated.hosts_dim
         as
        (select * from DEV.AIRBNB_cleanse.cln_hosts
        );
      
  