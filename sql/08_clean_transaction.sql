UPDATE surat_cleaning
SET transaction_clean = CASE
    WHEN transaction IN ('Resale', 'New Property') THEN transaction
    WHEN status IN ('Resale', 'New Property') THEN status
    WHEN floor IN ('Resale', 'New Property') THEN floor
    WHEN furnishing IN ('Resale', 'New Property') THEN furnishing
    WHEN facing IN ('Resale', 'New Property') THEN facing
    ELSE NULL
END;