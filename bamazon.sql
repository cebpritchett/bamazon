--- create database ---
DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

--- create table ---
USE bamazon;
CREATE TABLE products (
    item_id INTEGER UNSIGNED AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (255) NOT NULL,
    department_name VARCHAR (255) NOT NULL,
    price FLOAT(10, 2) NOT NULL, 
    stock_quantity INTEGER (65) NOT NULL,
    PRIMARY KEY (item_id)
)

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Drones", "Electronics", "400", "40")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Beer", "Food and Beverage", "10.50", "200")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Condoms", "Health", "3.99", "150")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Lightsaber", "Electronics", "599.99", "3")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Futurama Box Set", "Entertainment", "49.99", "10")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Baby Dragon Egg", "Misc.", "999.99", "3")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tiny Robot Clone of Yourself", "Weird", "9999.99", "1")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Black Market Kidneys", "Health", "50.00", "4")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Human Horn", "Aphrodisiacs and Scents", "200.00", "3")
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Get of Jail Free Card", "Fake Shit", "0", "999")
