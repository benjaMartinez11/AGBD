-1-
SELECT * FROM film
ORDER by Title ASC

-2-
SELECT DISTINCT rating FROM film
ORDER by rating ASC

-3-
SELECT title,replacement_cost, rating FROM film
WHERE rating IN ("PG-13", "PG")
ORDER by replacement_cost DESC , title ASC, rating ASC


-4-
SELECT c.city as ciudad, m.country as paises from city c
JOIN country m on  c.country_id = m.country_id
order by paises;


-5-