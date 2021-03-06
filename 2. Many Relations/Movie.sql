(SELECT STARNAME FROM STARSIN WHERE MOVIETITLE='The Usual Suspects')
INTERSECT
(SELECT NAME FROM MOVIESTAR WHERE GENDER='M');

SELECT DISTINCT starName
FROM starsIn, movie
WHERE movieYear = 1995
  AND studioName LIKE 'MGM';

SELECT DISTINCT name
FROM movie, movieExec
WHERE movie.studioName LIKE 'MGM'
  AND movie.producerc# = cert#;

SELECT m1.TITLE
FROM MOVIE AS m1, MOVIE AS m2
WHERE m2.TITLE = 'Star Wars' AND m1.length > m2.length;

SELECT M1.NAME
FROM MOVIEEXEC AS M1, MOVIEEXEC AS M2
WHERE M1.NETWORTH > M2.NETWORTH AND M2.NAME ='Stephen Spielberg';

SELECT MOVIE.TITLE
FROM MOVIEEXEC AS M1, MOVIEEXEC AS M2, MOVIE
WHERE M1.NAME = 'Stephen Spielberg' AND M2.NETWORTH > M1.NETWORTH AND MOVIE.PRODUCERC# = M2.CERT#;

