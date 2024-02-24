WITH StudentEnrollment AS (
    SELECT s.student_id, s.student_name , e.course_id FROM students s 
    INNER JOIN enrollments e
    ON s.student_id = e.student_id
)

SELECT se.student_name, c.course_name FROM courses c
INNER JOIN StudentEnrollment se ON se.course_id = c.course_id;

SELECT 
    s.student_name,
    c.course_name
FROM 
    Students s
JOIN 
    Enrollments e ON s.student_id = e.student_id
JOIN 
    Courses c ON e.course_id = c.course_id;
