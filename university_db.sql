-- Connecting to the database 'university_db'

-- Step 1: Creating the 'students' table to store student details
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,   
    student_name VARCHAR(50),        
    age INT,                       
    email VARCHAR(100),             
    frontend_mark INT,             
    backend_mark INT,                
    status VARCHAR(20)            
);

-- Step 2: Creating the 'courses' table to store course details
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,    
    course_name VARCHAR(50),        
    credits INT                    
);

-- Step 3: Creating the 'enrollment' table to link students and courses with foreign keys
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,  
    student_id INT REFERENCES students(student_id) ON DELETE CASCADE, 
    course_id INT REFERENCES courses(course_id) ON DELETE CASCADE     
);

-- Step 4: Inserting sample data into the 'students' table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES
    ('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
    ('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
    ('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
    ('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
    ('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
    ('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);

-- Step 5: Inserting sample data into the 'courses' table
INSERT INTO courses (course_name, credits)
VALUES
    ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3);

-- Step 6: Inserting sample data into the 'enrollment' table to record students enrolled in each course
INSERT INTO enrollment (student_id, course_id)
VALUES
    (1, 1),   
    (1, 2),   
    (2, 1),   
    (3, 2);  

-- Task Queries

-- Query 1: Insert a new student record with your details (replace placeholders with actual values)
-- Purpose: Adding a new student record to the 'students' table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES ('Ariyan Rakib', 22, 'rakib@example.com', 45, 55, NULL);

-- Query 2: Retrieve names of all students enrolled in the course titled 'Next.js'
-- Purpose: List all students taking the 'Next.js' course
SELECT s.student_name
FROM students s
JOIN enrollment e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Next.js';

-- Query 3: Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'
-- Purpose: Set 'status' to 'Awarded' for the student with the highest combined marks
UPDATE students
SET status = 'Rakibul'
WHERE student_id = (
    SELECT student_id
    FROM students
    ORDER BY (frontend_mark + backend_mark) DESC
    LIMIT 1
);

-- Query 4: Delete all courses that have no students enrolled
-- Purpose: Remove courses from 'courses' table if there are no associated enrollments
DELETE FROM courses
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM enrollment);

-- Query 5: Retrieve names of students with a limit of 2, starting from the 3rd student
-- Purpose: Select a subset of students (3rd and 4th entries by student_id)
SELECT student_name
FROM students
ORDER BY student_id
OFFSET 2
LIMIT 2;

-- Query 6: Retrieve course names and the number of students enrolled in each course
-- Purpose: Display each course name with the total number of students enrolled
SELECT c.course_name, COUNT(e.student_id) AS students_enrolled
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Query 7: Calculate and display the average age of all students
-- Purpose: Find the average age of students in the 'students' table
SELECT AVG(age) AS average_age
FROM students;

-- Query 8: Retrieve names of students whose email addresses contain 'example.com'
-- Purpose: Select students with 'example.com' in their email
SELECT student_name
FROM students
WHERE email LIKE '%example.com%';
