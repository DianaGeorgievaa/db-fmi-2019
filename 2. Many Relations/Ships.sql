SELECT NAME,DISPLACEMENT,NUMGUNS
FROM SHIPS,CLASSES,OUTCOMES
WHERE OUTCOMES.ship = SHIPS.name AND CLASSES.class=SHIPS.CLASS AND BATTLE='Guadalcanal';

SELECT DISTINCT c1.COUNTRY
FROM CLASSES c1 JOIN CLASSES c2 ON c1.COUNTRY=c2.COUNTRY
WHERE c1.type='bb' and c2.type='bc';

SELECT o1.ship 
FROM outcomes o1
JOIN battles b1 ON o1.battle=b1.name
JOIN outcomes o2 ON o1.ship=o2.ship
JOIN battles b2 ON o2.battle=b2.name
where b1.date < b2.date AND o1.result = 'damaged';
