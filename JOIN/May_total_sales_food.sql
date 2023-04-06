-- 5월 식품들의 총매출 조회하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 스스로 해결 여부 : X
-- 처음에 서브쿼리로 풀려고 했는데 분명 결과는 맞는데 틀렸다고 나와서 질문 게시판에 올려놨다
-- 질문 게시판 : https://school.programmers.co.kr/questions/46936
-- 레벨 4짜리라 쉽지는 않았다. 2번째 시도는 다른사람의 서브쿼리 없는 코드를 참고해서 해결했다

SELECT DISTINCT P.PRODUCT_ID,P.PRODUCT_NAME,
    SUM(AMOUNT)*P.PRICE AS TOTAL_SALES
FROM FOOD_PRODUCT AS P
INNER JOIN FOOD_ORDER AS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE MONTH(O.PRODUCE_DATE) = 5 AND YEAR(O.PRODUCE_DATE) = 2022
GROUP BY O.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC;