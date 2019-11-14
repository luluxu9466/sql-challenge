-- Create table as picture
CREATE TABLE animals(
	id SERIAL PRIMARY KEY,
	animal_name VARCHAR NOT NULL,
	species VARCHAR NOT NULL
);

INSERT INTO animals (id, animal_name, species)
VALUES (1,'Mickey Mouse', 'duck'),
(2, 'Minnie Mouse', 'duck'),
(3, 'Donald Duck', 'mouse');

-- Change each animal's species to the correct species.
UPDATE animals
SET species = 'duck'
WHERE animal_name LIKE '%Duck';

UPDATE animals
SET species = 'mouse'
WHERE animal_name LIKE '%Mouse';

-- Show updated table
SELECT * FROM animals
ORDER BY id;