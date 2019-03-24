SELECT COUNT(CLASS) AS numberClasses
FROM CLASSES
WHERE TYPE='bb'

SELECT CLASS,AVG(NUMGUNS) AS avgNumGuns
FROM CLASSES
WHERE TYPE='bb'
GROUP BY CLASS

SELECT AVG(NUMGUNS) AS avgNUMGUNS
FROM CLASSES

SELECT s.CLASS, MIN(s.launched) as firstYear,MAX(s.launched) as lastYear
FROM CLASSES c JOIN SHIPS s ON c.CLASS=s.CLASS
GROUP BY s.CLASS

SELECT CLASS,COUNT(o.RESULT) as numberSunk
FROM SHIPS c JOIN OUTCOMES o ON c.name=o.ship
WHERE result='sunk'
GROUP BY CLASS


select class
from ships s join outcomes o on s.name=o.ship
group by class
having count(o.ship)>=2
intersect
select class
from ships s join outcomes o on s.name=o.ship
where o.result='sunk';

SELECT COUNTRY,AVG(BORE) as avgBore
FROM CLASSES c JOIN SHIPS s ON c.CLASS=s.CLASS
GROUP BY COUNTRY

