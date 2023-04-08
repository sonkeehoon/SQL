-- 스스로 해결 여부 : X

SELECT MONTH(START_DATE) AS month, CAR_ID, COUNT(*) as RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE MONTH(start_date) BETWEEN 8 AND 10
    AND car_id in (SELECT car_id 
                   FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                   WHERE MONTH(start_date) BETWEEN 8 AND 10
                   GROUP BY car_id
                   HAVING COUNT(car_id) >= 5)
GROUP BY month, car_id
having RECORDS > 0
ORDER BY month, car_id DESC;
