-- 오랜 기간 보호한 동물(1) : https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 스스로 해결 여부 : O

SELECT I.NAME,I.DATETIME
FROM ANIMAL_INS AS I
LEFT JOIN ANIMAL_OUTS AS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.ANIMAL_ID IS NULL
ORDER BY I.DATETIME
LIMIT 3;