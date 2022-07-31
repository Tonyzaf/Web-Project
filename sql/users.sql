CREATE DATABASE web;
USE web;
CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    isadmin BOOLEAN NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(50)NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE infection (
    username VARCHAR(50) NOT NULL ,
    number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    infectiondate DATE
);
INSERT INTO users (isadmin,username,email,password) VALUES ("0","test","test","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES ("1","admin","admin","AAAaaa!1");