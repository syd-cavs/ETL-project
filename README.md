# ETL-project

For our project, we obtained two separate datasets from Kaggle surrounding the topic of the PlayStation4.  One dataset gave us information on sales for PS4 games and the second dataset gave us information about the players who played the games and how well they rated the game. Our purpose was to look at the popularity in sales for the games in comparison to the ratings and completion times the gamers would give the game.

The first step we took was cleaning the data sets.  We cleaned each csv to only contain the columns of data we were interested in first.  When the cleaning of the individual csvs was completed, we merged them in pandas so that we could isolate the video games that appeared in both datasets.  There was one row of duplicate data which we removed.  From here, we re-created the original csv tables so that they only included the data that would appear in both datasets.  We exported this data to new csvs.

Using the csvs that we created, we created an ERD sketch to plan how to create the table schema, with the game name being the overlapping information between our datasets.

After importing the data into pgAdmin through the jupyter notebook (as well as making sure importing through the csvs worked), we created tables to look at different aspects of the data. We also ran a few queries to test that everything worked properly.

Looking at the game, genre, publisher for games, ranked in descending order by their rating:	
  Persona 5 is highest rated at 4.7; Real Farm is lowest, with rating of 1.7, 

Looking at the games and genre for games published by Square Enix, with rating in descending order:
  Final Fantasy VII is highest with 4.6; Lara Croft and the Temple of Osiris at 3.1

Looking at the games, genre, completion times and completion percentage for North American sales:
  Highest completion percentage is the Walking Dead: Michonne at 87.5%, but has completion times between 1-2 hours

Lowest completion percentage is Cities: Skylines at 0.2%, but has completion times between 150-200 hours
  Games with largest completion times (200-700 hours) tended to have low completion percentages (0.2-1.8)
      Gran Turismo Sport
      Earth Defense 4.1
      Grand Theft Auto V
      Guitar Hero Live
      Friday the 13th:The Game

Limitations:
The sample of data for the PS4 game data set that described the ratings and completion data came from the truetrophies website.  The data was limited to feedback and players that linked their gaming accounts with this website.  According to their website they have a sample size of about 500,000 gamers, this is still a small sample size out of the large population of gamers.

Each data set had over 1000+ rows of data on video games, however, when we combined the data there were only 247 overlapping values after the removal of a duplicate.
