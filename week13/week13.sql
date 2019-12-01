use movie_db;

create view titles_directors as
select title,director_name
from movies,movie_directors,directors
where movies.movie_id = movie_directors.movie_id and directors.director_id = movie_directors.director_id;

select * from titles_directors;

create view action_movies as
select movies.movie_id,movies.title
from movies join genres on movies.movie_id = genres.movie_id
where genre_name like "%action%";

select * from action_movies;
#=====================================================================================
call GetMovies();
CALL `movie_db`.`GetMovieByDirector`("Peter Jackson");
call GetMovieByCoStars("Ian McKellen","Orlando Bloom");

