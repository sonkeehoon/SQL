-- 즐겨찾기가 가장 많은 식당 정보 출력하기 : https://school.programmers.co.kr/learn/courses/30/lessons/131123
-- 스스로 해결 여부 : X
-- 참고한 코드 : https://kukuta.tistory.com/398

SELECT R.FOOD_TYPE, R.REST_ID, R.REST_NAME, R.FAVORITES
FROM REST_INFO AS R
JOIN (SELECT FOOD_TYPE, max(FAVORITES) as FAVORITES
FROM REST_INFO
GROUP BY FOOD_TYPE) as F on F.FAVORITES = R.FAVORITES and F.FOOD_TYPE = R.FOOD_TYPE
ORDER BY FOOD_TYPE DESC;
