-- SELECT
--        B.TITLE
--      , B.BOARD_ID
--      , R.REPLY_ID
--      , R.WRITER_ID
--      , R.CONTENTS
--      , TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
--   FROM USED_GOODS_BOARD B
--      , USED_GOODS_REPLY R
--  WHERE B.BOARD_ID = R.BOARD_ID
--    AND B.CREATED_DATE >= TO_DATE('2022-10-01', 'YYYY-MM-DD')
--    AND B.CREATED_DATE < TO_DATE('2022-11-01', 'YYYY-MM-DD')
--  ORDER BY B.CREATED_DATE ASC, B.TITLE ASC
 

-- 위의 오라클 조인과 조회되는 데이터가 다르다...
 SELECT
        B.TITLE
      , B.BOARD_ID
      , R.REPLY_ID
      , R.WRITER_ID
      , R.CONTENTS
      , TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
   FROM USED_GOODS_BOARD B
  INNER JOIN USED_GOODS_REPLY R
     ON B.BOARD_ID = R.BOARD_ID
  WHERE B.CREATED_DATE >= TO_DATE('2022-10-01', 'YYYY-MM-DD')
    AND B.CREATED_DATE < TO_DATE('2022-11-01', 'YYYY-MM-DD')
  ORDER BY R.CREATED_DATE ASC, B.TITLE ASC;