SELECT *
FROM SHIPS s RIGHT JOIN CLASSES c ON s.class=c.class
WHERE s.NAME is not NULL;

SELECT *
FROM SHIPS s RIGHT JOIN CLASSES c ON s.class=c.class
WHERE s.NAME is not NULL
UNION
SELECT *
FROM SHIPS s RIGHT JOIN CLASSES c ON s.class=c.class
WHERE s.NAME is NULL and c.class in (select NAME 
  
                                     FROM ships)
SELECT DISTINct c.COUNTRY, s.NAME
FROM CLASSES c JOIN SHIPS s ON c.CLASS=s.CLASS
LEFT JOIN OUTCOMES o ON s.NAME=o.SHIP
WHERE o.SHIP is NULL

SELECT s.NAME "Ship Name"
FROM SHIPS s 
JOIN CLASSES c ON s.CLASS=c.CLASS
WHERE c.NUMGUNS>=7 and LAUNCHED='1916';

SELECT o.SHIP, o.BATTLE, b.DATE
FROM OUTCOMES o JOIN BATTLES b ON o.BATTLE=b.NAME
WHERE RESULT='sunk'
ORDER BY BATTLE;

