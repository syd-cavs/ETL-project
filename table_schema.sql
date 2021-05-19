-- DROP TABLE ps4games CASCADE; 
-- DROP TABLE sales_data;

CREATE TABLE ps4games (
	Game VARCHAR, 
	Score INT,	
	Gamers INT,
	Completion_Percentage NUMERIC,	
	Rating NUMERIC,
	Minimum_Completion_Time INT,
	Maximum_Completion_Time INT,
	PRIMARY KEY (Game));
	
CREATE TABLE sales_data (
	Game VARCHAR,
	Year NUMERIC,
	Genre VARCHAR,
	Publisher VARCHAR,
	North_America NUMERIC,	
	Global NUMERIC,
	FOREIGN KEY (Game) REFERENCES ps4games(Game));