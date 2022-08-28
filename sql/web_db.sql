CREATE DATABASE web;
USE web;
CREATE TABLE users (
    id                      INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    isadmin                 BOOLEAN NOT NULL,
    username                VARCHAR(50) NOT NULL UNIQUE,
    email                   VARCHAR(50)NOT NULL UNIQUE,
    password                VARCHAR(255) NOT NULL
);

CREATE TABLE infection (
    id INT NOT NULL ,
    number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    infectiondate DATE,
    CONSTRAINT id FOREIGN KEY (id) REFERENCES users(id)
);

CREATE TABLE pois (
    id                      VARCHAR(50) PRIMARY KEY NOT NULL,
    poiname                 VARCHAR(50) NOT NULL,
    poiaddress              VARCHAR(50) NOT NULL,
    poilat                  FLOAT NOT NULL,
    poilng                  FLOAT NOT NULL
);

CREATE TABLE poitypes (
    id                      VARCHAR(50) NOT NULL,
    poitype                 VARCHAR(50) NOT NULL,
    FOREIGN KEY (id) REFERENCES pois(id)
);

CREATE TABLE poitimes(
    id                      VARCHAR(50) NOT NULL,
    day                     VARCHAR(50) NOT NULL,
    hour                    VARCHAR(50) NOT NULL,
    popularity              INT,
    FOREIGN KEY (id) REFERENCES pois(id)
);

CREATE TABLE entries(
    entry_id                INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    entry_time              TIMESTAMP NOT NULL,
    poi_id                  VARCHAR(50) NOT NULL,
    user_id                 INT NOT NULL,
    attendance              INT ,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (poi_id) REFERENCES pois(id)
);
