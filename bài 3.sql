CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

INSERT INTO employees (full_name, salary)
VALUES
('Nguyễn Văn An', 10000000),
('Trần Thị Bình', 12000000),
('Lê Văn Cường', 8000000),
('Phạm Thị Dung', 15000000);

DELIMITER $$

CREATE PROCEDURE sp_get_avg_salary()
BEGIN
    DECLARE avg_salary DECIMAL(10,2);

    SELECT AVG(salary)
    INTO avg_salary
    FROM employees;

    SELECT avg_salary AS average_salary;
END $$

DELIMITER ;

CALL sp_get_avg_salary();