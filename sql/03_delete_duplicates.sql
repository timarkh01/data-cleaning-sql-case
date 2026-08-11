DELETE FROM surat_cleaning
WHERE row_id NOT IN (
	SELECT MIN(row_id)
	FROM surat_uncleaned
	GROUP BY property_name, area_with_type, square_feet, transaction, status, 
             floor, furnishing, facing, description, price_per_sqft, price
);