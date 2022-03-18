USE codeup_test_db;

SELECT 'Pink Floyd Albums below' AS 'showing only';
SELECT * FROM albums WHERE artist = 'Pink Floyd'; -- separating only pink floyd albums

SELECT 'same release year as Sgt. Pepper''s Lonely Hearts Club Band' AS 'showing only';
SELECT * FROM albums WHERE YEAR(release_date) = 1967; -- works, but last two only happen to have one each on my list

SELECT 'same genre as Nevermind' AS 'showing only';
SELECT * FROM albums WHERE genre = 'Grunge'; -- works

SELECT 'released in the 1990''s' AS 'showing only';
SELECT * FROM albums WHERE YEAR(release_date) BETWEEN 1990 AND 1999;  -- works

SELECT 'less than 20 million sales' AS 'showing only';
SELECT * FROM albums WHERE sales < '20';

SELECT '''Rock'' genre' AS 'showing only';
SELECT * FROM albums WHERE genre = 'Rock'; -- probably must have exact values, doesnt look for contains 'rock' just exact 'rock'
