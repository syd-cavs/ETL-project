-- DROP TABLE ps4games CASCADE; 
-- DROP TABLE games_data;

CREATE TABLE ps4games (
	Game VARCHAR, 
	Year INT,
	Genre VARCHAR,
	Publisher VARCHAR,
	NorthAmerica NUMERIC,
	Europe NUMERIC,
	Japan NUMERIC,
	RestofWorld NUMERIC,
	Global NUMERIC,
	PRIMARY KEY (Game));

CREATE TABLE games_data (
	game VARCHAR,
	score INT,	
	leaderbord INT,
	gamers INT,
	comp_perc NUMERIC,
	rating NUMERIC,
	url VARCHAR,	
	min_comp_time INT,
	max_comp_time INT,
	FOREIGN KEY (game) REFERENCES PS4Games(Game));