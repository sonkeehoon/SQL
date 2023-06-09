-- 상품 별 오프라인 매출 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 스스로 해결 여부 : O

SELECT P.PRODUCT_CODE, SUM(SALES_AMOUNT)*P.PRICE AS SALES
FROM PRODUCT AS P
JOIN OFFLINE_SALE AS O 
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY P.PRODUCT_ID
ORDER BY SALES DESC, PRODUCT_CODE