# Unit 2 Lab 4
USE sakila;
# 1. Get film ratings.
SELECT DISTINCT rating
FROM film;

# 2. Get release years.
SELECT DISTINCT release_year
FROM film;

# 3. Get all films with ARMAGEDDON in the title.
SELECT *
FROM film
WHERE title REGEXP "ARMAGEDDON";

# 4. Get all films with APOLLO in the title
SELECT *
FROM film
WHERE title LIKE "%apollo%";

# 5. Get all films which title ends with APOLLO.
SELECT *
FROM film
WHERE title REGEXP "apollo$";

# 6. Get all films with word DATE in the title.
SELECT *
FROM film
WHERE title REGEXP "date";

# 7. Get 10 films with the longest title.
SELECT title, length(title) AS title_length
FROM film
ORDER BY title_length DESC
LIMIT 10;

# 8. Get 10 the longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# 9. How many films include Behind the Scenes content?
SELECT COUNT(film_id)
FROM film
WHERE special_features REGEXP "Behind the Scenes";

# 10. List films ordered by release year and title in alphabetical order.
SELECT *
FROM film
ORDER BY release_year DESC, title ASC; -- I guess it isn't necessary to order by release year since we previously saw all the films were released in 2006