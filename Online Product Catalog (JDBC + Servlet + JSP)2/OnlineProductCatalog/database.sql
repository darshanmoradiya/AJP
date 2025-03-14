
CREATE DATABASE IF NOT EXISTS productdb;
USE productdb;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DOUBLE NOT NULL
);

INSERT INTO products (name, price) VALUES ('Product 1', 100.0), ('Product 2', 150.0), ('Product 3', 200.0);
        