CREATE DATABASE IF NOT EXISTS products_db;
USE products_db;

CREATE TABLE IF NOT EXISTS products (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (name, price, stock)
VALUES
  ("mouse", 25000, 10),
  ("teclado", 40000, 5);
