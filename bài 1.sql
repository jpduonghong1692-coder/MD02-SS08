CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    class_name VARCHAR(50) NOT NULL
);

INSERT INTO students (full_name, class_name)
VALUES
('Nguyễn Văn An', 'CNTT01'),
('Trần Thị Bình', 'CNTT02'),
('Lê Văn Cường', 'CNTT01'),
('Phạm Thị Dung', 'CNTT03');

DELIMITER $$

CREATE PROCEDURE sp_get_all_students()
BEGIN
    SELECT *
    FROM students;
END $$

DELIMITER ;

CALL sp_get_all_students();

