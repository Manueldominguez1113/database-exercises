USE codeup_test_db;

SELECT * FROM albums;
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;


SELECT * FROM albums WHERE YEAR(release_date) < 1980;
-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = DATE_FORMAT(release_date,'1800-%m-%d') WHERE YEAR(release_date) < 1980;

SELECT * FROM albums WHERE YEAR(release_date) < 1980;


SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'peter Jackson';

