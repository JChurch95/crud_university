CREATE TABLE students(
    id serial PRIMARY KEY,
    student_name text
)
CREATE TABLE courses(
    id serial PRIMARY KEY,
    course_name text
)
CREATE TABLE enrollments(
    id serial PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
)