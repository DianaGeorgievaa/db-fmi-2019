SELECT NAME
FROM MOVIESTAR
WHERE NAME IN (
SELECT NAME
FROM MOVIEEXEC
WHERE NETWORTH>10000000 AND GENDER='F');

SELECT NAME
FROM MOVIESTAR
WHERE NAME NOT IN (
SELECT NAME
FROM MOVIEEXEC);

SELECT TITLE
FROM MOVIE
WHERE LENGTH>(
SELECT LENGTH
FROM MOVIE
WHERE TITLE='Star Wars');

SELECT TITLE,t.NAME
FROM MOVIE m,
(SELECT cert#, name
 FROM MOVIEEXEC
 WHERE NETWORTH> ( SELECT NETWORTH
				   FROM MOVIEEXEC
				   WHERE NAME='Merv Griffin')) t
WHERE m.producerc#=t.cert#;