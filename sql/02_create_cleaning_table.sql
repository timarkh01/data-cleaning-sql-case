CREATE TABLE surat_cleaning AS 
SELECT * FROM surat_uncleaned;

ALTER TABLE surat_cleaning ADD PRIMARY KEY (row_id);