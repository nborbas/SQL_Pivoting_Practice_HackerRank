# Pivoting with MySQL - HackerRank Exercise

Check out the page of [HackerRank](https://www.hackerrank.com/)! They have really good and free practice exercises for SQL.  
Check my solution under solution.sql file!

### Exercise  
Pivot the occupation column in occupations so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be doctor, professor, singer, and actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

### Input Format  
The OCCUPATIONS table is described as follows:  
![image](https://user-images.githubusercontent.com/96722899/149545683-1a02a29c-9ca4-4e64-b507-94ad9cd05ae9.png)

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

### Sample Input  
![image](https://user-images.githubusercontent.com/96722899/149545710-e6b987d9-2ffa-4de7-88ba-91d4144c08ec.png)

### Sample Output  
![image](https://user-images.githubusercontent.com/96722899/149545929-78dcbc91-ed5d-4b2f-bd4b-dba276e8ff3f.png)

### Explanation  
The first column is an alphabetically ordered list of Doctor names.  
The second column is an alphabetically ordered list of Professor names.  
The third column is an alphabetically ordered list of Singer names.  
The fourth column is an alphabetically ordered list of Actor names.  
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.
