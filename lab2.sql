
CREATE TABLE course (
    crcode varchar(20),
    title varchar(100),
    dept varchar(100),
    credits int,
    teacher varchar(100)
);

CREATE TABLE student (
    rollno int,
    name varchar(100),
    hostelno varchar(100),
    cpi real,
    dept varchar(100)
);

CREATE TABLE study (
    crcode varchar(20),
    rollno int,
    grade varchar(20)
);

INSERT INTO course
	VALUES ('cs303', 'Databases and information system', 'CS', 6, 'N L sarda');

INSERT INTO course (crcode, title, dept, teacher)
	VALUES('cs313','Databases and information system lab', 'CS', 'N L sarda'),
	('cs203','c++', 'CS', 'sandip'),
	('cs113','Software system lab', 'CS', 'pawade');

INSERT INTO course (crcode, title, dept, credits, teacher)
	VALUES('cs323','Databases  lab', 'EE', 8, 'Sudarshan');






INSERT INTO student (rollno, name, hostelno, cpi, dept)
	VALUES(170010016,'Kunal', 'H3', 9.5,'CS' ),
	(170010012,'karthik', 'H4', 8.2,'EE' ),
	(170030040,'akshat', 'H3', 7.5,'ME' ),
	(170010019,'akshatkarani', 'H4', 9.2,'EE' ),
	(170010003,'kunalkumar', 'H3', 4.67,'CS' ),
	(170010033,'HRITIK', 'H1', 7.67,'CS' ),
	(170010013,'ALOK', 'H2', 8.25,'CS' );



INSERT INTO study (crcode, rollno, grade)
	VALUES('cs323',170010040,'AA'),
	('cs303',170010012,'BB'),
	('cs313',170010016,'AB'),
	('cs313',170010003,'AA'),
	('cs203',170010033,'FR'),
	('cs113',170010013,'FR');





SELECT rollno,name FROM student WHERE cpi > 9 AND hostelno = 'H4';
SELECT title FROM course WHERE teacher = 'Sudarshan';
SELECT DISTINCT student.rollno, name FROM student,study WHERE cpi < 6 AND grade = 'AA';
SELECT DISTINCT student.rollno, name FROM student,study,course WHERE student.dept = 'CS' AND grade = 'FR' AND student.rollno = study.rollno AND course.crcode = study.crcode AND course.dept = 'CS';


