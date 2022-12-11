USE codeup_test_db;

SELECT 'Albums by Pink Floyd' AS 'Description: ';
SELECT Name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' AS 'Description: ';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre of Nevermind' AS 'Description: ';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990s' AS 'Description: ';
SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums with less than 20 million sales' AS 'Description: ';
SELECT name
FROM albums
WHERE sales < 20;

SELECT 'Albums with a genre of rock' AS 'Description: ';
SELECT name
FROM albums
WHERE genre = 'Rock';


