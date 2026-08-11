UPDATE surat_cleaning
SET price_per_sqft_num = NULLIF(REGEXP_REPLACE(price_per_sqft, '[^0-9.]', '', 'g'), '')::NUMERIC;