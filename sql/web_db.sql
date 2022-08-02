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

CREATE TABLE pois (
    id VARCHAR UNIQUE NOT NULL PRIMARY KEY,
    poiname VARCHAR NOT NULL,
    poiaddress VARCHAR NOT NULL,
    poilat FLOAT NOT NULL,
    poilng FLOAT NOT NULL
);

CREATE TABLE poitypes (
    id VARCHAR PRIMARY KEY NOT NULL,
    poitype VARCHAR NOT NULL
);

CREATE TABLE poitimes(
    id VARCHAR PRIMARY KEY NOT NULL,
    day VARCHAR NOT NULL,
    hour VARCHAR NOT NULL,
    popularity INT
);

INSERT INTO users (isadmin,username,email,password) VALUES (false,"test","test","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (true,"admin","admin","AAAaaa!1");