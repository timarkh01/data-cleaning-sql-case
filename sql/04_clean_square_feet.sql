UPDATE surat_cleaning
SET square_feet_num = CASE
    WHEN square_feet ILIKE '%Ready to Move%' OR square_feet ILIKE '%Resale%' THEN NULL
    WHEN square_feet ILIKE '%sqyrd%' THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC * 9
    WHEN square_feet ILIKE '%sqm%'   THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC * 10.7639
    WHEN square_feet ILIKE '%acre%'  THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC * 43560
    WHEN square_feet ILIKE '%ground%'THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC * 2400
    WHEN square_feet ILIKE '%rood%'  THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC * 10890
    WHEN square_feet ILIKE '%sqft%'  THEN NULLIF(REGEXP_REPLACE(square_feet, '[^0-9.]', '', 'g'), '')::NUMERIC
    ELSE NULL
END;