-- 주문량이 많은 아이스크림들 조회하기 : https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 스스로 해결 여부 : O

SELECT F.FLAVOR
FROM FIRST_HALF F
JOIN JULY J ON F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY SUM(DISTINCT F.TOTAL_ORDER)+SUM(DISTINCT J.TOTAL_ORDER) DESC
LIMIT 3;

-- FIRST_HALF 테이블 : 상반기 주문 정보
-- JULY : 7월의 아이스크림 주문 정보
-- 외래 키 : FLAVOR