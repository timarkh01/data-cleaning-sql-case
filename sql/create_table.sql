CREATE TABLE surat_uncleaned (
	row_id SERIAL PRIMARY KEY,
	property_name VARCHAR(130),
	area_with_type VARCHAR(30),
	square_feet VARCHAR(20),
	transaction VARCHAR(40),
	status VARCHAR(40),
	floor VARCHAR(40),
	furnishing VARCHAR(40),
	facing VARCHAR(60),
	description VARCHAR(4000),
	price_per_sqft VARCHAR(40),
	price VARCHAR(30)
)