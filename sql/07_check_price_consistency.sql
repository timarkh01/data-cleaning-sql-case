SELECT property_name, square_feet_num, price_per_sqft_num, price_num,
       ROUND(square_feet_num * price_per_sqft_num) AS calculated_price,
       price_num - ROUND(square_feet_num * price_per_sqft_num) AS diff
FROM surat_cleaning
WHERE square_feet_num IS NOT NULL 
  AND price_per_sqft_num IS NOT NULL 
  AND price_num IS NOT NULL
ORDER BY ABS(price_num - ROUND(square_feet_num * price_per_sqft_num)) DESC
LIMIT 10;