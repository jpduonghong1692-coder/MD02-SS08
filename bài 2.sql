CREATE DATABASE ProductDB;
USE ProductDB;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL
);

INSERT INTO products (product_name, price, category)
VALUES
('iPhone 15', 25000000, 'Điện thoại'),
('Samsung S25', 22000000, 'Điện thoại'),
('Dell XPS 13', 35000000, 'Laptop'),
('MacBook Air M4', 32000000, 'Laptop'),
('Tai nghe Sony', 3000000, 'Phụ kiện');


DELIMITER $$

CREATE PROCEDURE sp_get_products_by_category(
    IN p_category VARCHAR(50)
)
BEGIN
    SELECT *
    FROM products
    WHERE category = p_category;
END $$

DELIMITER ;

CALL sp_get_products_by_category('Laptop');

