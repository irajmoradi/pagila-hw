/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT film_id, title, count(inventory_id) FROM film join inventory using (film_id) where title ilike  'h%' GROUP BY title, film_id ORDER BY title DESC;
