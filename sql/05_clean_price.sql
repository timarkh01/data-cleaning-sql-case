UPDATE surat_cleaning 
SET price_num = CASE
	WHEN price ILIKE '%CallforPrice%' THEN NULL
	WHEN price ILIKE '%Cr%' THEN NULLIF(REGEXP_REPLACE(price, '[^0-9.]', '', 'g'), '')::NUMERIC * 10000000
	WHEN price ILIKE '%Lac%' THEN NULLIF(REGEXP_REPLACE(price, '[^0-9.]', '', 'g'), '')::NUMERIC * 100000
	ELSE NULLIF(REGEXP_REPLACE(price, '[^0-9.]', '', 'g'), '')::NUMERIC
END;