USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Description: ';

DELETE
FROM albums
WHERE release_date > 1991;

SELECT 'Disco Albums' AS 'Description: ';

DELETE
FROM albums
WHERE genre = 'Disco';

SELECT 'Albums by Michael Jackson' AS 'Description: ';

DELETE FROM albums
WHERE artist = 'Michael Jackson';


