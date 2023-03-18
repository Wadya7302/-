SELECT *
FROM student
WHERE 
level = 'Intermediate' 
AND education_form = 'personal';


UPDATE users
SET user_email = 'princess99999999@gmail.com'
WHERE user_id = 11478;

SELECT *
FROM users
WHERE user_id = 11478;


SELECT
COUNT(*)
FROM student
WHERE level = 'Upper-Intermediate';


SELECT *
FROM group_student
HAVING COUNT(*);

SELECT
MIN (subject_id)
FROM users
GROUP BY subject_id
ORDER BY MIN;


SELECT *
FROM users



SELECT level,
COUNT (*)
FROM student
WHERE level IN('Intermediate','Elementary')
GROUP BY level;


SELECT level,education_form,
COUNT(*)
FROM student
WHERE level IN('Upper-Intermediate')
GROUP BY level,education_form;

SELECT level,education_form,
COUNT(*)
FROM student
WHERE level IN('Intermediate','Elementary')
GROUP BY 1,2;


SELECT level,education_form,
COUNT(*)
FROM student
WHERE education_form = 'group'
GROUP BY level,education_form
ORDER BY COUNT
;


SELECT level,
COUNT(*)
FROM student
GROUP BY level
HAVING COUNT(*) !=0;


SELECT subject_id,
COUNT(*)
FROM users
GROUP BY subject_id
ORDER BY COUNT DESC;


SELECT subject_id,
COUNT(*)
FROM users
GROUP BY subject_id
ORDER BY COUNT;

SELECT *
FROM group_student

SELECT group_id,
COUNT(*)
FROM group_student
GROUP BY group_id
ORDER BY COUNT DESC;

SELECT group_student.user_id,
group_student.group_id,
teacher.teacher_id,
teacher.email
FROM group_student
INNER JOIN teacher
ON group_student.group_id = teacher.group_id;


SELECT s.user_id,
s.group_id,
t.teacher_id,
t.email AS teacher_email
FROM group_student AS s
INNER JOIN teacher AS t
ON s.group_id = t.group_id
WHERE t.email = 'cold@gmail.com';

SELECT * FROM users;
SELECT * FROM subjects;


SELECT u.user_id,
u.user_email,
u.subject_id,
s.subject_title
FROM users AS u
INNER JOIN subject AS s
ON u.subject_id = s.subject_id
WHERE u.user_email = 'sasha555@gmail.com';


SELECT s.user_id,
       s.group_id,
       t.group_id,
       t.teacher_id,
       t.email
FROM teacher AS t
LEFT OUTER JOIN group_student AS s
ON s.group_id = t.group_id;


SELECT * FROM group_student

SELECT * FROM teacher

SELECT s.user_id,
s.group_id,
t.group_id,
t.teacher_id,
t.email
FROM group_student AS s
INNER JOIN teacher AS t
ON s.group_id = t.group_id

WHERE teacher_id = 33284;


GROUP BY s.user_id,
s.group_id,
t.teacher_id



SELECT level,education_form,
COUNT(*)
FROM student
WHERE education_form = 'group'
GROUP BY level,education_form
ORDER BY COUNT
;



SELECT teacher_id,
COUNT(*)
FROM teacher
GROUP BY teacher_id
ORDER BY COUNT DESC;

/*Определите id преподавателя группы, в которой занимается наибольшее количество учеников. Таблицы для запроса: group_student и teacher */
SELECT 
t.teacher_id,
COUNT(*)
FROM group_student AS s
INNER JOIN teacher AS t
ON s.group_id = t.group_id
GROUP BY
t.teacher_id
ORDER BY COUNT DESC;