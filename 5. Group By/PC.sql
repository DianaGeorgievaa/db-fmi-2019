SELECT AVG(speed)
FROM PC

SELECT MAKER,AVG(screen) AS averageScreen
FROM LAPTOP l JOIN PRODUCT p ON l.model=p.model
GROUP BY MAKER

SELECT AVG(speed) AS avgSpeed
FROM LAPTOP l JOIN PRODUCT p ON l.model=p.model
WHERE price>1000

SELECT AVG(price) AS avgPrice
FROM PC pc JOIN PRODUCT p ON pc.model=p.model
WHERE MAKER='A'
GROUP BY MAKER

SELECT MAKER, AVG(price) AS avgPrice
FROM ( SELECT price,model FROM LAPTOP UNION ALL
       SELECT price,model FROM PC)t 
	   JOIN PRODUCT ON t.model=product.model 
GROUP BY MAKER
HAVING MAKER='B';

SELECT SPEED,AVG(price) AS averagePrice
FROM PC
GROUP BY SPEED

SELECT MAKER,count(p.model) as CNT
FROM PC pc JOIN PRODUCT p ON pc.model=p.model
GROUP BY p.MAKER
HAVING count(p.model)>=3;

SELECT MAKER,pc.price AS price
FROM PRODUCT p JOIN PC pc ON p.model=pc.model
WHERE pc.price >= ALL (SELECT PRICE FROM PC);


SELECT speed,AVG(price) AS AVGprice
FROM PC
GROUP BY SPEED
HAVING speed>800


SELECT MAKER, AVG(hd)
FROM PC pc JOIN PRODUCT p ON pc.model=p.model
WHERE MAKER IN (SELECT MAKER FROM PRODUCT WHERE type='printer')
GROUP BY MAKER 