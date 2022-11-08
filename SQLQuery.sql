--SORU1--------QUESTÝO1:
--hangi þehirde kaç müþterimiz olduðu bilgisini getiren sorgu:
--the query for the count of customer for every cities 
--çözüme bakmadan önce kendin dene 
--try it yourself before look at to the answers.
SELECT CT.CITY,COUNT(C.ID) AS CUSTOMERCOUNT from CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.CITYID
GROUP BY CITY
--ayný soru subquery methoduyla
--same question with subquery method
SELECT *,
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID=C.ID)
FROM CITIES C ORDER BY 3

--soru2-------question 2
--10'dan fazla müþterisi olan þehirleri müþteri sayýsý ile birlikte müþteri sayýsýna göre 
--fazladan aza doðru sýralý þekilde getir
--the script of cities which there are more than 10 customers in the city and make this query with sort descending
SELECT CT.CITY,COUNT(C.ID) AS CUSTOMERCOUNT FROM CUSTOMERS C
INNER JOIN CITIES CT ON C.CITYID=CT.ID
GROUP BY CT.CITY 
HAVING COUNT(C.ID)>10
ORDER BY CUSTOMERCOUNT DESC
--ayný soru subquery methoduyla
--same question with subquery method
SELECT CITY,
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID=CT.ID) AS A
FROM CITIES CT
WHERE (SELECT COUNT(*)  FROM CUSTOMERS WHERE CITYID=CT.ID)>10
ORDER BY 2 DESC


--soru3-------question3

--hangi þehirde kaç erkek kaç kadýn müþterimizin olduðu bilgisini þekildeki gibi getiren 
--sorguyu yazýnýz þekildeki gibi gösteriniz
--cýty    -   gender   -   (no column name)
--ADANA   -	   E      -        10
--ADANA   -	   K      -        6
--ADIYAMAN-	   E      -        7
--ADANA   -	   K      -        4

SELECT CT.CITY,C.GENDER,COUNT(C.ID) FROM CUSTOMERS C
INNER JOIN CITIES CT ON C.CITYID=CT.ID
GROUP BY CT.CITY,C.GENDER
ORDER BY CT.CITY,C.GENDER 














SELECT CT.CITY,COUNT(C.ID) ERKEKSAYISI ,COUNT(C.ID) KADINSAYISI FROM CUSTOMERS C
INNER JOIN CITIES CT ON CT.ID=C.ID
GROUP BY CT.CITY


