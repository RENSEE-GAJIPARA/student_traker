CREATE DATABASE student_tracker;
USE student_tracker;

-- Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(100),
    admission_date DATE,
    department_id INT
);

INSERT INTO Students VALUES
(1,'Amit Shah','2003-01-10','Male','amit@gmail.com','9876543210','Ahmedabad','2022-06-01',1),
(2,'Riya Patel','2003-02-11','Female','riya@gmail.com','9876543211','Surat','2022-06-01',1),
(3,'Karan Mehta','2002-03-12','Male','karan@gmail.com','9876543212','Rajkot','2021-06-01',2),
(4,'Neha Jain','2003-04-15','Female','neha@gmail.com','9876543213','Vadodara','2022-06-01',2),
(5,'Rahul Das','2002-05-20','Male','rahul@gmail.com','9876543214','Delhi','2021-06-01',3),
(6,'Sneha Roy','2003-06-18','Female','sneha@gmail.com','9876543215','Mumbai','2022-06-01',3),
(7,'Arjun Singh','2003-07-22','Male','arjun@gmail.com','9876543216','Jaipur','2022-06-01',4),
(8,'Pooja Verma','2002-08-19','Female','pooja@gmail.com','9876543217','Lucknow','2021-06-01',4),
(9,'Vikas Kumar','2003-09-25','Male','vikas@gmail.com','9876543218','Patna','2022-06-01',5),
(10,'Anjali Gupta','2002-10-10','Female','anjali@gmail.com','9876543219','Bhopal','2021-06-01',5),
(11,'Rohit Sharma','2003-11-12','Male','rohit@gmail.com','9876543220','Pune','2022-06-01',1),
(12,'Meena Iyer','2002-12-05','Female','meena@gmail.com','9876543221','Chennai','2021-06-01',2),
(13,'Sahil Khan','2003-01-30','Male','sahil@gmail.com','9876543222','Hyderabad','2022-06-01',3),
(14,'Kavya Nair','2002-03-14','Female','kavya@gmail.com','9876543223','Kochi','2021-06-01',4),
(15,'Deepak Yadav','2003-05-28','Male','deepak@gmail.com','9876543224','Kanpur','2022-06-01',5);


-- Faculty
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT
);

INSERT INTO Faculty VALUES
(1,'Dr. Rao','rao@gmail.com','9000000001',1),
(2,'Dr. Shah','shah@gmail.com','9000000002',1),
(3,'Dr. Mehta','mehta@gmail.com','9000000003',2),
(4,'Dr. Iyer','iyer@gmail.com','9000000004',2),
(5,'Dr. Khan','khan@gmail.com','9000000005',3),
(6,'Dr. Roy','roy@gmail.com','9000000006',3),
(7,'Dr. Singh','singh@gmail.com','9000000007',4),
(8,'Dr. Patel','patel@gmail.com','9000000008',4),
(9,'Dr. Das','das@gmail.com','9000000009',5),
(10,'Dr. Jain','jain@gmail.com','9000000010',5);


-- Departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(1,'Computer Science'),
(2,'IT'),
(3,'Electronics'),
(4,'Mechanical'),
(5,'Civil');


-- Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    faculty_id INT
);

INSERT INTO Courses VALUES
(1,'DBMS',1),
(2,'OS',2),
(3,'Python',3),
(4,'Java',4),
(5,'Networks',5),
(6,'AI',6),
(7,'Thermodynamics',7),
(8,'Mechanics',8),
(9,'Surveying',9),
(10,'Construction',10);


-- Enrollments
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE
);

INSERT INTO Enrollments VALUES
(1,1,1,'2023-01-01'),
(2,2,1,'2023-01-01'),
(3,3,2,'2023-01-02'),
(4,4,3,'2023-01-02'),
(5,5,4,'2023-01-03'),
(6,6,5,'2023-01-03'),
(7,7,6,'2023-01-04'),
(8,8,7,'2023-01-04'),
(9,9,8,'2023-01-05'),
(10,10,9,'2023-01-05'),
(11,11,1,'2023-01-06'),
(12,12,2,'2023-01-06'),
(13,13,3,'2023-01-07'),
(14,14,4,'2023-01-07'),
(15,15,5,'2023-01-08'),
(16,1,2,'2023-01-08'),
(17,2,3,'2023-01-09'),
(18,3,4,'2023-01-09'),
(19,4,5,'2023-01-10'),
(20,5,6,'2023-01-10');


-- Attendance
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(10)
);

INSERT INTO Attendance VALUES
(1,1,1,'2023-02-01','Present'),
(2,2,1,'2023-02-01','Absent'),
(3,3,2,'2023-02-02','Late'),
(4,4,3,'2023-02-02','Present'),
(5,5,4,'2023-02-03','Absent'),
(6,6,5,'2023-02-03','Present'),
(7,7,6,'2023-02-04','Late'),
(8,8,7,'2023-02-04','Present'),
(9,9,8,'2023-02-05','Absent'),
(10,10,9,'2023-02-05','Present'),
(11,11,1,'2023-02-06','Present'),
(12,12,2,'2023-02-06','Late'),
(13,13,3,'2023-02-07','Present'),
(14,14,4,'2023-02-07','Absent'),
(15,15,5,'2023-02-08','Present'),
(16,1,2,'2023-02-08','Late'),
(17,2,3,'2023-02-09','Present'),
(18,3,4,'2023-02-09','Absent'),
(19,4,5,'2023-02-10','Present'),
(20,5,6,'2023-02-10','Late');


-- Grades
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks_obtained INT
);

INSERT INTO Grades VALUES
(1,1,1,95),
(2,2,1,85),
(3,3,2,70),
(4,4,3,60),
(5,5,4,50),
(6,6,5,90),
(7,7,6,88),
(8,8,7,76),
(9,9,8,65),
(10,10,9,55),
(11,11,1,92),
(12,12,2,81),
(13,13,3,73),
(14,14,4,68),
(15,15,5,59),
(16,1,2,89),
(17,2,3,91),
(18,3,4,78),
(19,4,5,67),
(20,5,6,82);


-- Q1. CRUD Operations
-- Insert new students, faculty members, courses, and enrollments.
INSERT INTO Students VALUES
(16, 'Ishaan Roy', '2004-05-14', 'Male', 'ishaan.roy@student.edu', '9222222201', 'Ahmedabad', '2023-07-15', 1);

INSERT INTO Faculty VALUES
(11, 'Dr. Geeta', 'geeta@college.edu', '9333333301', 1);

INSERT INTO Courses VALUES
(11, 'Big Data Analytics', 11);

INSERT INTO Enrollments VALUES
(21, 8, 8, '2023-01-11');

-- Update student records when they change contact details.
UPDATE Students 
SET phone_number = '9999988888', address = 'Surat'
WHERE student_id = 7;

-- Delete students who have dropped out.
DELETE FROM Enrollments WHERE student_id = 21;
DELETE FROM Students WHERE student_id = 21;


-- Q2. SQL Clauses (WHERE, HAVING, LIMIT)
-- Get students enrolled in the Computer Science Department.
SELECT s.* FROM Students s
JOIN Departments d ON d.department_id = s.department_id
WHERE d.department_name = 'Computer Science';

-- Retrieve the top 10 highest-scoring students.
SELECT s.student_id, s.name, g.marks_obtained 
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
ORDER BY g.marks_obtained DESC 
LIMIT 10;

-- Find students with attendance below 75%.
SELECT s.student_id, s.name,
AVG(CASE WHEN status = 'Present' THEN 1 ELSE 0 END)*100 AS Attendance
FROM Students s
JOIN Attendance a ON s.student_id = a.student_id
GROUP BY a.student_id
HAVING Attendance < 75;

-- Q3. SQL Operators (AND, OR, NOT)
-- Retrieve students who have attendance below 50% AND are failing.
SELECT DISTINCT s.name
FROM Students s
JOIN (
    SELECT student_id,
        SUM(CASE WHEN status IN ('Present','Late') THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS att_pct
    FROM Attendance
    GROUP BY student_id
) att_data ON s.student_id = att_data.student_id
JOIN (
    SELECT student_id, AVG(marks_obtained) AS avg_marks
    FROM Grades
    GROUP BY student_id
) grade_data ON s.student_id = grade_data.student_id
WHERE att_data.att_pct < 50 AND grade_data.avg_marks < 50;

-- Find students who scored above 90 OR have perfect attendance.
SELECT DISTINCT s.student_id, s.name
FROM Students s
WHERE s.student_id IN (
    SELECT student_id FROM Grades WHERE marks_obtained > 90
)
OR s.student_id IN (
    SELECT student_id
    FROM Attendance
    GROUP BY student_id
    HAVING SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END) = 0
);

-- List faculty members NOT assigned to any course.
SELECT faculty_id, name FROM Faculty
WHERE faculty_id NOT IN(
    SELECT DISTINCT faculty_id FROM Courses
    WHERE faculty_id IS NOT NULL
);

-- Q4. Sorting & Grouping (ORDER BY, GROUP BY)
-- List students alphabetically by name.
SELECT student_id, name FROM Students
ORDER BY name;

-- Count the number of students enrolled in each department.
SELECT d.department_name, COUNT(s.student_id) AS total_students
FROM Students s
JOIN Departments d ON d.department_id = s.department_id
GROUP BY d.department_name;

-- Show the average marks per course.
SELECT c.course_name, AVG(g.marks_obtained) AS avg_marks
FROM Courses c
JOIN Grades g ON g.course_id = c.course_id
GROUP BY c.course_id
ORDER BY avg_marks DESC;

-- Q5. Aggregate Functions (SUM, AVG, MAX, MIN, COUNT)
-- Find the average attendance percentage of students.
SELECT AVG(attendance) AS avg_attendance
FROM (SELECT student_id,
AVG(status='Present')*100 AS attendance
FROM Attendance GROUP BY student_id) A;

-- Identify the highest and lowest marks obtained in each course.
SELECT c.course_name, 
MAX(g.marks_obtained) AS min_marks, 
MIN(g.marks_obtained) AS max_marks
FROM Grades g 
JOIN Courses c ON g.course_id = c.course_id
GROUP BY g.course_id;

-- Calculate the total number of students per department.
SELECT d.department_name, COUNT(*) AS total_students
FROM Students s
JOIN Departments d ON d.department_id = s.department_id
GROUP BY s.department_id;

-- Q6. Primary & Foreign Key Relationships
-- Ensure that students cannot enroll in the same course multiple times.
-- Demonstrate: Attempting duplicate enrollment will fail
INSERT INTO Enrollments
VALUES (1, 1, '2024-01-01');
-- ERROR: Duplicate entry for key 'uq_student_course'

-- Link faculty members to the courses they teach.
SELECT f.name, c.course_name
FROM Faculty f
JOIN Courses c ON f.faculty_id = c.faculty_id
ORDER BY f.name;

-- Q7. Joins
-- Retrieve student details along with their department using INNER JOIN.
SELECT s.name, d.department_name
FROM Students s
INNER JOIN Departments d
ON s.department_id = d.department_id;

-- Get a list of students who have not enrolled in any course using LEFT JOIN.
SELECT s.name, e.enrollment_id, e.course_id
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- List courses that have no faculty assigned using RIGHT JOIN.
SELECT c.course_id, c.course_name, f.name
FROM Faculty f
RIGHT JOIN Courses c ON f.faculty_id = c.faculty_id
WHERE f.faculty_id IS NULL;

-- Show students without grades using FULL OUTER JOIN.
SELECT s.student_id, s.name, g.marks_obtained
FROM Students s
LEFT JOIN Grades g ON s.student_id = g.student_id
WHERE g.grade_id IS NULL
UNION
SELECT s.student_id, s.name, g.marks_obtained
FROM Students s
RIGHT JOIN Grades g ON s.student_id = g.student_id
WHERE s.student_id IS NULL;

-- Q8. Subqueries
-- Find students with marks above the average score.
SELECT s.name, c.course_name, g.marks_obtained
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
WHERE g.marks_obtained > (SELECT AVG(marks_obtained) FROM Grades);

-- Retrieve courses taught by faculty members with at least 5 years of experience.
SELECT * FROM Courses
WHERE faculty_id IN (
    SELECT faculty_id FROM Faculty
    WHERE TIMESTAMPDIFF(YEAR, joining_date, CURDATE()) >= 5
);

-- Identify students who have missed more than 10 classes.
SELECT s.name, a.status
FROM Attendance a
JOIN Students s 
ON s.student_id = a.student_id
WHERE a.status='Absent'
GROUP BY a.student_id
HAVING COUNT(*) > 10;

-- Q9. Date & Time Functions
-- Extract the month from attendance_date to analyze attendance trends.
SELECT MONTH(attendance_date) AS Month
FROM Attendance;

-- Calculate the number of years since a student’s admission.
SELECT student_id, name, admission_date,
TIMESTAMPDIFF(YEAR, admission_date, CURDATE()) 
AS year_add
FROM Students;

-- Format attendance_date as DD-MM-YYYY.
SELECT attendance_date, 
DATE_FORMAT(attendance_date,'%d-%m-%Y')
AS formated_date FROM Attendance;

-- Q10. String Manipulation Functions
-- Convert all faculty names to uppercase.
SELECT name, UPPER(name) 
AS upeer_name FROM Faculty;

-- Trim unnecessary spaces from student names.
SELECT name, TRIM(name) 
AS clean_name FROM Students;

-- Replace NULL email fields with "Email Not Provided".
SELECT IFNULL(email,'Email Not Provided') 
AS if_null FROM Students;

-- Q11. Window Functions
-- Rank students based on their overall marks.
SELECT s.name,
SUM(g.marks_obtained) AS total_marks,
RANK() 
OVER (ORDER BY SUM(g.marks_obtained) DESC) AS student_rank
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
GROUP BY g.student_id;

-- Show the cumulative attendance percentage per course.
SELECT s.name, a.status,
AVG(CASE WHEN a.status IN ('Present', 'Late') THEN 100 ELSE 0 END)
OVER (PARTITION BY a.course_id ORDER BY a.attendance_date) AS cumulative_att
FROM Attendance a
JOIN Students s ON a.student_id = s.student_id;

-- Display the running total of students enrolled per month.
SELECT DATE_FORMAT(enrollment_date, '%Y-%m') AS enrollment_month,
SUM(COUNT(*)) 
OVER (ORDER BY DATE_FORMAT(enrollment_date, '%Y-%m')) AS running_total
FROM Enrollments
GROUP BY DATE_FORMAT(enrollment_date, '%Y-%m')
ORDER BY enrollment_month;

-- Q12. CASE Expressions
-- Assign student performance levels:
-- "Excellent" if marks > 90
-- "Good" if marks between 75 and 90
-- "Needs Improvement" otherwise
SELECT s.name, g.marks_obtained,
CASE
    WHEN g.marks_obtained > 90 THEN 'Excellent'
    WHEN g.marks_obtained BETWEEN 75 AND 90 THEN 'Good'
    ELSE 'Needs Improvement'
END AS performance_level
FROM Grades g
JOIN Students s ON g.student_id = s.student_id;

-- Categorize attendance records:
-- "Regular" for attendance above 80%
-- "Irregular" for attendance between 50% and 80%
-- "Defaulter" otherwise
SELECT a.student_id, s.name,
CASE 
    WHEN AVG(status='Present') * 100 > 80 THEN 'Regular'
    WHEN AVG(status='Present') * 100 BETWEEN 50 AND 80 THEN 'Irregular'
ELSE 'Defaulter'
END As status
FROM Attendance a
JOIN Students s ON s.student_id = a.student_id
GROUP BY student_id;