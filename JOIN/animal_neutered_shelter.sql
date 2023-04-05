-- 보호소에서 중성화한 동물 : https://school.programmers.co.kr/learn/courses/30/lessons/59045#fn1
-- 스스로 해결 여부 : O
-- LIKE 문과 IN 문도 공부할수 있는 예제

SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME
FROM ANIMAL_INS AS I
JOIN ANIMAL_OUTS AS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.SEX_UPON_INTAKE LIKE "Intact%" AND O.SEX_UPON_OUTCOME IN ("Spayed Female","Neutered Male")
ORDER BY ANIMAL_ID;