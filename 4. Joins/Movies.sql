SELECT TITLE, t.NAME
FROM MOVIE m JOIN
(SELECT NAME, cert#
FROM MOVIEEXEC 
WHERE CERT# IN (SELECT PRODUCERC#
                FROM MOVIE
			    WHERE TITLE='Star Wars'))t
				on m.PRODUCERC#=t.cert#;

SELECT distinct me.NAME
FROM MOVIE m join STARSIN s
on m.title=s.MOVIETITLE and m.year=s.MOVIEYEAR
JOIN MOVIEEXEC me on m.producerc#=me.cert#
WHERE starname='Harrison Ford';

SELECT DISTINCT s.NAME, si.STARNAME
FROM STUDIO s JOIN MOVIE m ON s.NAME=m.STUDIONAME
JOIN STARSIN si ON  m.TITLE=si.MOVIETITLE and m.year=si.MOVIEYEAR
order by s.NAME;

SELECT si.STARNAME, t.NETWORTH, m.TITLE
FROM STARSIN si join MOVIE m on si.MOVIETITLE=m.title and
si.movieyear=m.year JOIN (
select cert#, networth
from movieexec
where networth >= all (select networth from movieexec)) t
on m.producerc#=t.cert#;

SELECT ms.NAME, si.MOVIETITLE
FROM MOVIESTAR ms
 LEFT JOIN STARSIN si on ms.name=si.STARNAME
WHERE si.MOVIETITLE is NULL;