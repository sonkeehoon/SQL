-- 있었는데요 없었습니다 : https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 스스로 해결 여부 : O

SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS AS I
JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME;
