UPDATE surat_cleaning
SET status_clean = CASE
    WHEN transaction ~ '^(Ready to Move|Poss\. by)' THEN transaction
    WHEN status ~ '^(Ready to Move|Poss\. by)' THEN status
    WHEN floor ~ '^(Ready to Move|Poss\. by)' THEN floor
    WHEN furnishing ~ '^(Ready to Move|Poss\. by)' THEN furnishing
    WHEN facing ~ '^(Ready to Move|Poss\. by)' THEN facing
    ELSE NULL
END;