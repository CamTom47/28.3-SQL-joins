-- write your queries here

-- joins_exercise=# SELECT * FROM owners LEFT JOIN vehicles ON owner_id = owners.id;

-- joins_exercise=# SELECT first_name, last_name, COUNT(*) FROM owners JOIN vehicles ON owner_id = owners.id GROUP BY owners.id ORDER BY first_name ASC;

-- SELECT first_name, last_name, CAST(AVG(price) AS int) AS average_price, COUNT(*) AS count FROM owners JOIN vehicles ON owner_id = owners.id GROUP BY owners.id HAVING COUNT(*) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;


SELECT name 
    FROM casting
        JOIN movie ON movie.id = casting.movieid
        JOIN actor ON actor.id = casting.actorid
            WHERE movie.id IN(SELECT movieid FROM casting
                    WHERE actorid IN ( SELECT id FROM actor WHERE name = 'Art Garfunkel')) 


SELECT title, name
    FROM movie
        JOIN casting ON movie.id = casting.movieid
        JOIN actor ON actor.id = casting.actorid
            WHERE movie.id IN (SELECT movieid FROM casting
                WHERE actorid IN (
                SELECT id FROM actor
                WHERE name='Julie Andrews')) AND ord = 1
