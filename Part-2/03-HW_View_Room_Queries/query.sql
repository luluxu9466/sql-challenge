-- Drop view if already exists
DROP VIEW title_count;

-- Create a view named title_count
CREATE VIEW title_count AS
SELECT title, (SELECT
			  count(film_id) AS "Number of Copies"
			  FROM inventory i
			  WHERE i.film_id = f.film_id
			  GROUP BY film_id)"Number of Copies"
FROM film f
ORDER BY title
;

-- Find all the titles that have 7 copies
SELECT * FROM title_count
WHERE "Number of Copies"=7