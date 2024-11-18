/** Setup:-
•	1.Create a Table which looks like below
•	2.Table EXAM_RESULTS
STUDENT_ID	FIRST_NAME	LAST_NAME	EXAM_ID	EXAM_SCORE
10	LAURA	LYNCH	1	90
10	LAURA	LYNCH	2	85
11	GRACE	BROWN	1	78
11	GRACE	BROWN	2	72
12	JAY	JACKSON	1	95
12	JAY	JACKSON	2	92
13	WILLIAM	BISHOP	1	70
13	WILLIAM	BISHOP	2	100
14	CHARLES	PRADA	2	85

*/
use qadbt;

create table EXAM_RESULTS(STUDENT_ID int(20),
 FIRST_NAME varchar(20), LAST_NAME varchar(20), EXAM_ID int(20), EXAM_SCORE int(20));
 
 insert into EXAM_RESULTS values(10, 'LAURA', 'LYNCH', 1, 90);
 insert into EXAM_RESULTS values(10, 'LAURA', 'LYNCH', 2, 85);
 insert into EXAM_RESULTS values(11, 'GRACE', 'BROWN', 1, 78);
 insert into EXAM_RESULTS values(11, 'GRACE', 'BROWN', 2, 72);
 insert into EXAM_RESULTS values(12, 'JAY', 'JACKSON', 1, 95);
 insert into EXAM_RESULTS values(12, 'JAY', 'JACKSON', 2, 92);
 insert into EXAM_RESULTS values(13, 'WILLIAM', 'BISHOP', 1, 70);
 insert into EXAM_RESULTS values(13, 'WILLIAM', 'BISHOP', 2, 100);
 insert into EXAM_RESULTS values(14, 'CHARLES', 'PRADA', 1, 85);
 
 select * from EXAM_RESULTS;
 
 /**
 16. What is the result of the following SQL statement:
SELECT COUNT(DISTINCT STUDENT_ID) FROM EXAM_RESULTS;
a) 3
b) 4
c) 5
d) 6

Answer=> c) 5
 */
SELECT COUNT(DISTINCT STUDENT_ID) FROM EXAM_RESULTS;

/**
17. What SQL statement do we use to find the average exam score for EXAM_ID = 1?
a) SELECT AVG(EXAM_SCORE) FROM EXAM_RESULTS;
b) SELECT AVG(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1;
c) SELECT AVG(EXAM_SCORE) FROM EXAM_RESULTS GROUP BY EXAM_ID;
d) SELECT COUNT(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1;

Answer=> b) SELECT AVG(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1;
*/
SELECT AVG(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1;

/**
18. Which SQL statement do we use to find out how many students took each exam?
a) SELECT COUNT(DISTINCT Stduetn_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;
b) SELECT EXAM_ID, MAX(STUDENT_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;
c) SELECT EXAM_ID, COUNT(DISTINCT STUDENT_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;
d) SELECT EXAM_ID, MIN(STUDENT_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;

Answer=> c) SELECT EXAM_ID, COUNT(DISTINCT STUDENT_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;
*/
SELECT EXAM_ID, COUNT(DISTINCT STUDENT_ID) FROM EXAM_RESULTS GROUP BY EXAM_ID;

/**
19. What SQL statement do we use to print out the record of all students whose last name starts with 'L'?
a) SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE 'L%';
b) SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE 'L';
c) SELECT * FROM EXAM_RESULTS WHERE LAST_NAME = 'L';
d) SELECT * FROM EXAM_RESULTS WHERE LAST_NAME <> 'L';

Answer=> a) SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE 'L%';
*/
SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE 'L%';

/**
20. What is the result of the following SQL statement:
SELECT MAX(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1 AND FIRST_NAME LIKE '%E%';
a) 90
b) 85
c) 100
d) 78

Answer=> b) 85
*/
SELECT MAX(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_ID = 1 AND FIRST_NAME LIKE '%E%';

/**
21. What SQL statement do we use to print out the records of all students whose first name or last name ends in 'A'?
a) SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE '%A' OR LAST_NAME LIKE '%A';
b) SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE 'A' OR LAST_NAME LIKE 'A';
c) SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE 'A%' OR LAST_NAME LIKE 'A%';
d) SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE '%A%' OR LAST_NAME LIKE '%A%';

Answer=> a) SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE '%A' OR LAST_NAME LIKE '%A';
*/
SELECT * FROM EXAM_RESULTS WHERE FIRST_NAME LIKE '%A' OR LAST_NAME LIKE '%A';

/**
22. What SQL statement do we use to find the name of all students who scored better than 90 on the second exam (EXAM_ID = 2)?
a) SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE EXAM_ID = 2 OR Exam_SCORE > 90;
b) SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE EXAM_ID = 2 AND Exam_SCORE > 90;
c) SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE Exam_SCORE > 90;
d) SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE EXAM_ID = 2 HAVING Exam_SCORE > 90;

Answer=> b) SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE EXAM_ID = 2 AND Exam_SCORE > 90;
*/
SELECT FIRST_NAME, LAST_NAME FROM EXAM_RESULTS WHERE EXAM_ID = 2 AND Exam_SCORE > 90;

/**
23. What SQL statement do we use to find the name of all students who scored better than 180 on all the Exams?
a) SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS GROUP BY FIRST_NAME, LAST_NAME;
b) SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS HAVING SUM(EXAM_SCORE) > 180;
c) SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS GROUP BY FIRST_NAME, LAST_NAME HAVING SUM(EXAM_SCORE) > 180;
d) SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS WHERE EXAM_SCORE > 180 GROUP BY FIRST_NAME, LAST_NAME;

Answer=> c) SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS GROUP BY FIRST_NAME, LAST_NAME HAVING SUM(EXAM_SCORE) > 180;
*/
SELECT FIRST_NAME, LAST_NAME, SUM(EXAM_SCORE) FROM EXAM_RESULTS GROUP BY FIRST_NAME, LAST_NAME HAVING SUM(EXAM_SCORE) > 180;

/**
24. How many records does the following SQL statement generate?
SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE '%N%' AND EXAM_SCORE > 88;
a) 4
b) 3
c) 1
d) No Result

Answer=> b) 3
*/
SELECT * FROM EXAM_RESULTS WHERE LAST_NAME LIKE '%N%' AND EXAM_SCORE > 88;

/**
25. How many records does the following SQL statement return?
SELECT * FROM EXAM_RESULTS WHERE STUDENT_ID <= 12 AND EXAM_SCORE > 85;
a) 5
b) 4
c) 3
d) 2

Answer=> c) 3
*/
SELECT * FROM EXAM_RESULTS WHERE STUDENT_ID <= 12 AND EXAM_SCORE > 85;
