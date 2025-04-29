CREATE DATABASE univdb25;

CREATE TABLE course(
   id CHAR(1) NOT NULL,
   name VARCHAR(20) NOT NULL,
   teacher_id CHAR(1) NOT NULL,
   PRIMARY KEY(id, name)
);

CREATE TABLE student(
   id CHAR(1) NOT NULL,
   first_name VARCHAR(20) NOT NULL,
   last_name VARCHAR(20) NOT NULL
);

CREATE TABLE student_course(
   student_id CHAR(1) NOT NULL,
   course_id CHAR(1) NOT NULL
);

CREATE TABLE teacher(
   id CHAR(1) NOT NULL,
   first_name VARCHAR(20) NOT NULL,
   last_name VARCHAR(20) NOT NULL
);

INSERT INTO course
VALUES 
      (1, 'Database design', 1),
	  (2, 'English literature', 2),
	  (3, 'Python programming', 1);

TABLE course;

INSERT INTO student
VALUES 
      (1, 'Shreya', 'Bain'),
	  (2, 'Rianna', 'Foster'),
	  (3, 'Yosef', 'Naylor');

TABLE student;

INSERT INTO student_course
VALUES 
      (1, 2),
	  (1, 3),
	  (2, 1),
	  (2, 2),
	  (2, 3),
	  (3, 1);

TABLE student_course;

INSERT INTO teacher
VALUES 
      (1, 'Taylah', 'Booker'),
	  (2, 'Sarah-Louise', 'Blake')
	  
TABLE teacher;

SELECT * FROM student JOIN student_course ON student.id = student_course.student_id;
SELECT * FROM teacher JOIN course ON teacher.id = course.teacher_id; 
SELECT * FROM course JOIN student_course ON course.id = student_course.course_id;