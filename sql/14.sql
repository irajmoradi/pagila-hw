/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

select title FROM film JOIN film_category using (film_id) JOIN category using(category_id) WHERE name ilike '%family%' ORDER BY title;
