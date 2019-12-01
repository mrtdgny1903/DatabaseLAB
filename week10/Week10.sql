use movie_db;

# 1. Show the films whose budget is greater than 10 million$ and ranking is less than 6.
Select title from movies where budget > 10000000 and ranking < 6;

# 2. Show the action films whose rating is greater than 8.8 and produced after 2009.
Select movies.title, genres.genre_name from movies inner join genres on movies.movie_id=genres.movie_id where rating > 8.8 and year >2009 and genre_name="action";
Select title from movies where rating >8.8 and yar > 2009 and movie_id in (select movie_id from genres where genre_name="Action");

# 3. Show the drama films whose duration is more than 150 minutes and oscars is more than 2.
Select movies.title from movies inner join genres on movies.movie_id=genres.movie_id where duration > 150 and oscars>2 and genre_name = "Drama";

# 4. Show the films that Orlando Bloom and Ian McKellen have act together and has more than 2 Oscars.
Select movies.title from movies where oscars > 2 and movie_id in (Select movie_id from movie_stars inner join stars on movie_stars.star_id=stars.star_id where star_name = "Ian McKellen" and movie_id in
(Select movie_id from movie_stars join stars on movie_stars.star_id=stars.star_id where star_name="Orlando Bloom"));

# 5. Show the Quentin Tarantino films which have more than 500000 votes and produced before 2000.
Select movies.title from movies where year < 2000 and votes >500000 and movie_id in (select movie_id from movie_directors inner join directors on movie_directors.director_id=directors.director_id where director_name ="Quentin Tarantino");


