-- 상품 별 오프라인 매출 구하기

-- ORACEL 문법
SELECT A.PRODUCT_CODE
     , SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
  FROM PRODUCT A
     , OFFLINE_SALE B
 WHERE A.PRODUCT_ID = B.PRODUCT_ID
 GROUP BY A.PRODUCT_CODE
 ORDER BY SALES DESC, A.PRODUCT_CODE

 -- ANSI
 SELECT A.PRODUCT_CODE
     , SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
  FROM PRODUCT A
  JOIN OFFLINE_SALE B
    ON A.PRODUCT_ID = B.PRODUCT_ID
 GROUP BY A.PRODUCT_CODE
 ORDER BY SALES DESC, A.PRODUCT_CODE