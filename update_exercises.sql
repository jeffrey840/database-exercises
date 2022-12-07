USE codeup_test_db;

SELECT 'All Albums' AS 'Description: ';

SELECT *
FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT 'All Albums' AS 'Description: ';

SELECT *
FROM albums;

SELECT 'All albums released before 1980' AS 'Description: ';

SELECT *
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;



SELECT 'All albums released before 1980' AS 'Description: ';

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Description: ';

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums by Peter Jackson' AS 'Description: ';

SELECT *
FROM albums
WHERE artist = 'Peter Jackson';