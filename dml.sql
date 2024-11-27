\copy forecast FROM '/Users/kirillnartov/Downloads/metro_forecast.csv' WITH DELIMITER ',' CSV HEADER; 
\copy median_price FROM '/Users/kirillnartov/Downloads/metro_median_price_tranformed.csv' WITH DELIMITER ',' CSV HEADER; 
\copy median_sale FROM '/Users/kirillnartov/Downloads/metro_median_sale_transformed.csv' WITH DELIMITER ',' CSV HEADER; 
\copy price_cut FROM '/Users/kirillnartov/Downloads/metro_share_listings_price_cut_transformed.csv' WITH DELIMITER ',' CSV HEADER; 
\copy zori FROM '/Users/kirillnartov/Downloads/metro_zori_transformed.csv' WITH DELIMITER ',' CSV HEADER; 


--Replace “'/Users/kirillnartov/Downloads/” with your own user directory.	
