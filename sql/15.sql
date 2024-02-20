/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, count(distinct film_id) as "sum" FROM film join film_category using (film_id) join category using (category_id) join language using (language_id) where language.name ilike '%english%' GROUP BY category.name ORDER BY category.name; 
