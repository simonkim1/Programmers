-- 가격이 제일 비싼 식품의 정보를 출력하기.sql
SELECT
        *
  FROM FOOD_PRODUCT 
 WHERE PRICE = (SELECT MAX(PRICE)
                  FROM FOOD_PRODUCT)