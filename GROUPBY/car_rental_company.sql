-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기 : https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 스스로 해결 여부 : X
SELECT car_type, count(*) as cars
FROM CAR_RENTAL_COMPANY_CAR
WHERE FIND_IN_SET('통풍시트', options) 
    OR FIND_IN_SET('열선시트', options)
    OR FIND_IN_SET('가죽시트', options)
GROUP BY car_type
ORDER BY car_type;
