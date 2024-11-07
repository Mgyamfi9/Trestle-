-- select all fields from all tables
SELECT * FROM schoolmanagementsystem.classes;
SELECT * FROM schoolmanagementsystem.enrollments;
SELECT * FROM schoolmanagementsystem.students;
SELECT * FROM schoolmanagementsystem.subjects;
SELECT * FROM schoolmanagementsystem.teachers;

-- filter with where
select * 
from students
where age> 18;

-- ordering in ascending order of age of students older than 18
select * 
from students
where age> 18
order by age;

-- counting number of students in each class and grouping them
SELECT students.class_id, COUNT(students.student_id) AS student_count, classes.class_name
FROM students
JOIN classes ON students.class_id = classes.class_id
GROUP BY students.class_id, classes.class_name;

-- joining tables
SELECT students.class_id,classes.class_name,students.first_name,students.last_name
FROM students
JOIN classes ON students.class_id = classes.class_id;

-- multi-table join with conditions 
SELECT subjects.subject_id,subjects.subject_name,students.first_name as student,teachers.first_name as teacher
FROM students
JOIN subjects ON students.subject_id = subjects.subject_id 
Join teachers on teachers.subject_id=students.subject_id;