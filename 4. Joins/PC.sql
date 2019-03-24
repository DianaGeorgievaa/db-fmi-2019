select p.*
from product p left join pc on p.model=pc.model
where type='PC' and code is NULL
union
select p.*
from product p left join printer pp on p.model=pp.model
where p.type='Printer' and code is NULL
union
select p.*
from product p left join laptop l on p.model=l.model
where type='Laptop' and code is NULL;

SELECT DISTINCT p1.MAKER
FROM PRODUCT p1 JOIN PRODUCT p2 ON p1.MAKER=p2.MAKER
WHERE p1.TYPE='printer' AND p2.TYPE='laptop'

SELECT distinct l1.hd
FROM Laptop l1 JOIN Laptop l2 ON l1.model>l2.model and l1.hd=l2.hd 

SELECT *
FROM  pc 
LEFT JOIN product p ON (pc.model=p.model)
WHERE p.model IS NULL
