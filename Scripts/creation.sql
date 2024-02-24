CREATE DATABASE IF NOT EXISTS my_dummy_database;
USE my_dummy_database;

-- Create Students table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    date_of_birth DATE,
    gender ENUM('Male', 'Female')
);

-- Insert data into Students table
INSERT INTO Students (student_name, date_of_birth, gender)
VALUES 
    ('John', '1995-03-15', 'Male'),
    ('Alice', '1998-08-20', 'Female'),
    ('Bob', '1997-05-10', 'Male');

-- Create Courses table
CREATE TABLE IF NOT EXISTS Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Insert data into Courses table
INSERT INTO Courses (course_name)
VALUES 
    ('Math'),
    ('Science'),
    ('History');

-- Create Enrollments table
CREATE TABLE IF NOT EXISTS Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES 
    (1, 1, '2023-01-10'),
    (1, 2, '2023-01-10'),
    (2, 1, '2023-01-12'),
    (3, 3, '2023-01-15'),
    (3, 2, '2023-01-15');