/* The exercise requires pivoting the original 'occupation' table.  
The below code is a template for pivoting in MySQL. */

-- Initializing row indexes as user defined variables
SET @row1 = 0, @row2 = 0, @row3 = 0, @row4 = 0;

SELECT MIN(doctor), MIN(professor), MIN(singer), MIN(actor)
FROM
/* Creating subquery that returns rownumbers as first column,  
then occupations as other columns. Rows will be the initial name column values.*/
    (SELECT 
        (CASE
         WHEN occupation = 'Doctor' THEN (@row1 := @row1 + 1)
         WHEN occupation = 'Professor' THEN (@row2 := @row2 + 1)
         WHEN occupation = 'Singer' THEN (@row3 := @row3 + 1)
         WHEN occupation = 'Actor' THEN (@row4 := @row4 + 1)
         END) AS rownumber,
        (CASE WHEN occupation = 'Doctor' THEN name END) AS doctor,
        (CASE WHEN occupation = 'Professor' THEN name END) AS professor,
        (CASE WHEN occupation = 'Singer' THEN name END) AS singer,
        (CASE WHEN occupation = 'Actor' THEN name END) AS actor
     FROM occupation
     ORDER BY name) AS subquery
GROUP BY rownumber;
