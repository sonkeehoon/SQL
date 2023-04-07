-- 가격대 별 상품 개수 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 스스로 해결 여부 : X
-- 문제를 딱 보자마자 어떻게 풀어야할지 감이 잘 안와서 남의 코드를 참고했다
-- 가격대 별로 그룹화 할때 PRICE-PRICE%10000 으로 구할수 있다는걸 깨달았다

SELECT (PRICE-PRICE%10000) AS PRICE_GROUP, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;