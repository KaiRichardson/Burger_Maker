-- Schema
DROP DATABASE IF EXISTS burger_db;
CREATE database burger_db;

USE burger_db;

-- USERS	
CREATE TABLE users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(100) NULL,
  password VARCHAR(100) NULL,
  user_avatar VARCHAR(100) NULL,
  PRIMARY KEY (user_id)
);

-- BURGERS	
CREATE TABLE burgers (
  burger_id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(100) NOT NULL,
  ingredient_1 VARCHAR(100) NULL,
  ingredient_2 VARCHAR(100) NULL,
  ingredient_3 VARCHAR(100) NULL,
  ingredient_4 VARCHAR(100) NULL,
  ingredient_5 VARCHAR(100) NULL,
  burger_picture VARCHAR(1000) NULL,
  user_id INT NULL,
  devoured BOOLEAN DEFAULT false,
  PRIMARY KEY (burger_id)
);

