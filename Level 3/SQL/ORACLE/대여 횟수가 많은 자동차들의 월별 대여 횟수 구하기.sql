-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기.sql

-- Oracle
SELECT TO_NUMBER(TO_CHAR(A.START_DATE, 'MM')) AS MONTH
     , A.CAR_ID
     , COUNT(*) AS RECORDS
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY A
     , (
         SELECT CAR_ID
           FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
          WHERE TO_CHAR(START_DATE, 'YYYYMM') BETWEEN '202208' AND '202210'
          GROUP BY CAR_ID
         HAVING COUNT(*) >= 5
       ) B
 WHERE A.CAR_ID = B.CAR_ID
   AND TO_CHAR(A.START_DATE, 'YYYYMM') BETWEEN '202208' AND '202210'
 GROUP BY TO_CHAR(A.START_DATE, 'MM'), A.CAR_ID
 ORDER BY TO_CHAR(A.START_DATE, 'MM') ASC, A.CAR_ID DESC

-- ANSI
SELECT TO_NUMBER(TO_CHAR(A.START_DATE, 'MM')) AS MONTH
     , A.CAR_ID
     , COUNT(*) AS RECORDS
  FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY A
  JOIN (
         SELECT CAR_ID
           FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
          WHERE TO_CHAR(START_DATE, 'YYYYMM') BETWEEN '202208' AND '202210'
          GROUP BY CAR_ID
         HAVING COUNT(*) >= 5
       ) B
    ON A.CAR_ID = B.CAR_ID
 WHERE TO_CHAR(A.START_DATE, 'YYYYMM') BETWEEN '202208' AND '202210'
 GROUP BY TO_CHAR(A.START_DATE, 'MM'), A.CAR_ID
 ORDER BY TO_CHAR(A.START_DATE, 'MM') ASC, A.CAR_ID DESC