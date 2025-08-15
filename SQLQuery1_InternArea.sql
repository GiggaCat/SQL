-- CREATING A DATABASE InternAreaDB --
CREATE DATABASE InternAreaDB;

-- USING THE EXISTING DATABASE --
USE InternAreaDB;

/*
CREATING ALL THE TABLES FOR OUR DATABASE 
IN THIS SAMPLE DATABASE WE HAVE FOUR TABLES
1) Students
2) Courses
3) Enrollment
4) Performance
*/

-- CREATING STUDENTS TABLE --
CREATE TABLE students
(
student_id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
enrollment_date DATE NOT NULL
);

-- CREATING COURSES TABLE --
CREATE TABLE courses
(
course_id INT PRIMARY KEY NOT NULL,
course_name VARCHAR(100) NOT NULL,
course_category VARCHAR(100) NOT NULL,
instructor VARCHAR(100) NOT NULL
);

-- CREATING ENROLLMENTS TABLE --
CREATE TABLE enrollments
(
enrollment_id INT PRIMARY KEY NOT NULL,
student_id INT FOREIGN KEY REFERENCES students NOT NULL,
course_id INT FOREIGN KEY REFERENCES courses NOT NULL,
enrollment_status VARCHAR(100) NOT NULL
);

-- CREATE TABLE PERFORMANCE --
CREATE TABLE performance
(
performance_id INT PRIMARY KEY NOT NULL,
enrollment_id INT FOREIGN KEY REFERENCES enrollments NOT NULL,
grade VARCHAR(5),
score_percentage DECIMAL(5,2),
feedback TEXT
);

-- INSERTING VALUES INTO STUDENT TABLE --
INSERT INTO students 
(student_id, first_name, last_name, email, enrollment_date) 
VALUES
(1, 'Aanya', 'Sharma', 'aanya.sharma@email.com', '2024-05-15'),
(2, 'Priya', 'Verma', 'priya.verma@email.com', '2024-05-18'),
(3, 'Priya', 'Singh', 'priya.singh@email.com', '2024-05-20'),
(4, 'Arjun', 'Mehta', 'arjun.mehta@email.com', '2024-05-22'),
(5, 'Ishita', 'Joshi', 'ishita.joshi@email.com', '2024-05-25'),
(6, 'Vikram', 'Das', 'vikram.das@email.com', '2024-05-28'),
(7, 'Sneha', 'Reddy', 'sneha.reddy@email.com', '2024-06-01'),
(8, 'Kunal', 'Patel', 'kunal.patel@email.com', '2024-06-05'),
(9, 'Diya', 'Kumar', 'diya.kumar@email.com', '2024-06-08'),
(10, 'Rahul', 'Dubey', 'rahul.dubey@email.com', '2024-06-10'),
(11, 'Neha', 'Saini', 'neha.saini@email.com', '2024-06-12'),
(12, 'Aditya', 'Mishra', 'aditya.mishra@email.com', '2024-06-15'),
(13, 'Sonia', 'Gupta', 'sonia.gupta@email.com', '2024-06-18'),
(14, 'Rahul', 'Yadav', 'rahul.yadav@email.com', '2024-06-20'),
(15, 'Kavya', 'Malhotra', 'kavya.malhotra@email.com', '2024-06-22'),
(16, 'Rajesh', 'Kumar', 'rajesh.kumar@email.com', '2024-06-25'),
(17, 'Anjali', 'Sharma', 'anjali.sharma@email.com', '2024-06-28'),
(18, 'Gaurav', 'Kumar', 'gaurav.kumar@email.com', '2024-07-01'),
(19, 'Tanya', 'Singh', 'tanya.singh@email.com', '2024-07-05'),
(20, 'Harsh', 'Verma', 'harsh.verma@email.com', '2024-07-08');

-- INSERTING VALUES INTO COURSES TABLE --
INSERT INTO courses 
(course_id, course_name, course_category, instructor) 
VALUES
(101, 'Full-Stack Web Development', 'Web Development', 'Anil Gupta'),
(102, 'Data Science with Python', 'Data Science', 'Meera Kapoor'),
(103, 'UI/UX Design Essentials', 'Design', 'Sunita Rao'),
(104, 'Digital Marketing Strategy', 'Marketing', 'Rajesh Nair');

-- INSERTING VALUES INTO ENROLLMENTS TABLE --
INSERT INTO enrollments
(enrollment_id, student_id, course_id, enrollment_status) 
VALUES
(1001, 1, 101, 'Active'),
(1002, 2, 102, 'Active'),
(1003, 3, 101, 'Completed'),
(1004, 4, 103, 'Active'),
(1005, 5, 102, 'Active'),
(1006, 6, 104, 'Active'),
(1007, 7, 101, 'Active'),
(1008, 8, 103, 'Completed'),
(1009, 9, 102, 'Active'),
(1010, 10, 104, 'Active'),
(1011, 11, 103, 'Active'),
(1012, 12, 101, 'Active'),
(1013, 13, 102, 'Completed'),
(1014, 14, 104, 'Active'),
(1015, 15, 103, 'Active'),
(1016, 16, 102, 'Active'),
(1017, 17, 104, 'Active'),
(1018, 18, 101, 'Active'),
(1019, 19, 103, 'Dropped'),
(1020, 20, 102, 'Active'),
(1021, 1, 104, 'Active');

-- INSERTING VALUES INTO PERFORMANCE TABLE --
INSERT INTO performance
(performance_id, enrollment_id, grade, score_percentage, feedback) 
VALUES
(2001, 1003, 'A+', 98.25, 'Outstanding work! Excellent project submission.'),
(2002, 1008, 'B', 85.00, 'Good progress, but there is room for improvement in final presentation.'),
(2003, 1013, 'A', 92.50, 'Completed all modules with great attention to detail.'),
(2004, 1019, NULL, NULL, 'Student dropped the course before completion.'),
(2005, 1001, NULL, NULL, 'Performance record for active student.'),
(2006, 1002, NULL, NULL, 'Performance record for active student.');




















