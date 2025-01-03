-- 조건에 맞는 도서와 저자 리스트 출력하기

-- ORACLE JOIN
SELECT B.BOOK_ID
     , A.AUTHOR_NAME
     , TO_CHAR(B.PUBLISHED_DATE, 'YYYY-MM-DD') AS PUBLISHED_DATE
  FROM BOOK B
     , AUTHOR A
 WHERE B.CATEGORY = '경제'
   AND B.AUTHOR_ID = A.AUTHOR_ID
 ORDER BY B.PUBLISHED_DATE ASC

 -- ANSI INNER JOIN
 SELECT B.BOOK_ID
     , A.AUTHOR_NAME
     , TO_CHAR(B.PUBLISHED_DATE, 'YYYY-MM-DD') AS PUBLISHED_DATE
  FROM BOOK B
  INNER JOIN AUTHOR A
     ON B.AUTHOR_ID = A.AUTHOR_ID
 WHERE B.CATEGORY = '경제'
 ORDER BY B.PUBLISHED_DATE ASC