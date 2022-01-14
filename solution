SET @row1 = 0, @row2 = 0, @row3 = 0, @row4 = 0;
SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (SELECT 
        (CASE
         WHEN Occupation = 'Doctor' THEN (@row1 := @row1 + 1)
         WHEN Occupation = 'Professor' THEN (@row2 := @row2 + 1)
         WHEN Occupation = 'Singer' THEN (@row3 := @row3 + 1)
         WHEN Occupation = 'Actor' THEN (@row4 := @row4 + 1)
         END) AS rownumber,
         (CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
         (CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
         (CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
         (CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
    FROM OCCUPATIONS
    ORDER BY Name) AS subquery
GROUP BY rownumber;
