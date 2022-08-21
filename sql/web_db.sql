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
    id VARCHAR(50) NOT NULL ,
    number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    infectiondate DATE,
    CONSTRAINT id
    FOREIGN KEY (id) REFERENCES users(id)
);

CREATE TABLE pois (
    id VARCHAR(50) PRIMARY KEY NOT NULL,
    poiname VARCHAR(50) NOT NULL,
    poiaddress VARCHAR(50) NOT NULL,
    poilat FLOAT NOT NULL,
    poilng FLOAT NOT NULL
);

CREATE TABLE poitypes (
    id VARCHAR(50) NOT NULL,
    poitype VARCHAR(50) NOT NULL
);

CREATE TABLE poitimes(
    id VARCHAR(50) NOT NULL,
    day VARCHAR(50) NOT NULL,
    hour VARCHAR(50) NOT NULL,
    popularity INT
);

INSERT INTO users (isadmin,username,email,password) VALUES (false,"test","test","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (true,"admin","admin","AAAaaa!1");