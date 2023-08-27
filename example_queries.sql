-- All photos and their details
SELECT
	photos.title,
	CONCAT(photographers.first_name, ' ', photographers.last_name)
		AS photographer,
	photos.date_taken AS date_taken,
	photos.description AS description
FROM photos
JOIN photographers
	ON photos.photographer_id = photographers.id;


-- All photos and their associated categories
SELECT
	photos.title,
	CONCAT(photographers.first_name, ' ', photographers.last_name)
		AS photographer,
	categories.name AS category
FROM photo_category
JOIN photos
	ON photo_id = photos.id
JOIN photographers
	ON photos.photographer_id = photographers.id
JOIN categories
	ON category_id = categories.id;


-- Waterscapes and their details
SELECT
	photos.id,
	photos.title,
	CONCAT(photographers.first_name, ' ', photographers.last_name)
		AS photographer,
	photos.date_taken AS date_taken,
	photos.description AS description
FROM photo_category
JOIN photos
	ON photo_id = photos.id
JOIN photographers
	ON photos.photographer_id = photographers.id
JOIN categories
	ON category_id = categories.id
WHERE categories.name = 'Waterscapes';
