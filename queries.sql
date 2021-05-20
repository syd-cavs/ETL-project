-- view game, genre, publisher for games, ranked in descending order by their rating	
SELECT ps4games.game AS "Game",
		sales_data.genre AS "Genre",
		sales_data.publisher AS "Publisher",
		ps4games.rating AS "Rating"
FROM ps4games
INNER JOIN sales_data
ON ps4games.game = sales_data.game
ORDER BY "Rating" DESC;

-- view games, genre for Square Enix games, with rating in descending order
SELECT ps4games.game AS "Game",
		sales_data.genre AS "Genre",
		sales_data.publisher AS "Publisher",
		ps4games.rating AS "Rating"
FROM ps4games
INNER JOIN sales_data
ON ps4games.game = sales_data.game
WHERE Publisher = 'Square Enix'
ORDER BY "Rating" DESC;

-- view games, genre, completion times for North American sales
SELECT ps4games.game AS "Game",
		sales_data.genre AS "Genre",
		sales_data.north_america AS "North American Sales",
		ps4games.completion_percentage AS "Avg Completion Percentage",
		ps4games.minimum_completion_time AS "Minimum Completion Time",
		ps4games.maximum_completion_time AS "Maximum Completion Time"		
FROM ps4games
INNER JOIN sales_data
ON ps4games.game = sales_data.game
ORDER BY "Avg Completion Percentage" DESC;