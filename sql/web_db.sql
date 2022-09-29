DROP DATABASE IF EXISTS web;
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
    poilat                  DOUBLE NOT NULL,
    poilng                  DOUBLE NOT NULL
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

INSERT INTO users (isadmin,username,email,password) VALUES (true,"admin","admin@gmail.com","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"silia","silia@gmail.com","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"maria","mariadim@gmail.com","Maria12345!");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"kate","katerinaxen@gmail.com","Kate12345!");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"giannismark","giannismark@gmail.com","Gm12345!");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"antoniszaf","antoniszaf@gmail.com","Az12345!");

INSERT INTO infection (id,infectiondate) VALUES ("2","2022-09-23");
INSERT INTO infection (id,infectiondate) VALUES ("3","2022-09-25");



INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 10:02:23","ChIJ_7nx_mxJXhMRSrp68dDU67M","2","4"); /*user 1 - user 3 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 11:30:31","ChIJHf2oKOhJXhMRU48jxmo1y6s","2","22");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 17:13:11","ChIJUb5ZXC82XhMRXaOkeHvXc_Y","2","9");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 18:34:02","ChIJGyYZay82XhMRYIH_uvIjIH8","2","150"); /*user 1 - user 3 (2)*/

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 10:05:02","ChIJ_7nx_mxJXhMRSrp68dDU67M","2","5"); 
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 13:44:53","ChIJyRizl0hJXhMRYIWm34jaikk","2","12");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 15:41:11","ChIJkRhinSg2XhMRipOQ12_hPzI","2","11");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 15:45:56","ChIJXXD-Nt1JXhMRWCTJyMxS_Xg","2","44"); /*user 1 - user 3 (3)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 21:02:23","ChIJGyYZay82XhMRYIH_uvIjIH8","2","100");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 10:00:25","ChIJ_7nx_mxJXhMRSrp68dDU67M","2","3"); /*user 1 - user 2 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 12:00:43","ChIJaczbf8JJXhMR9QcBFbdskRA","2","1");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 15:33:26","ChIJD_GT-iQ2XhMRbFWExhIn4sI","2","7");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 15:52:31","ChIJMSeG8hk2XhMRRhwsF8fhP3Y","2","22");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 17:23:51","ChIJHz0GwiY2XhMRl8CM130I0qw","2","54");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 19:02:23","ChIJYdZBLCY2XhMRZRAQwVO1aEg","2","45"); /*user 1 - user 5 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 20:22:54","ChIJGyYZay82XhMRYIH_uvIjIH8","2","250");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 10:10:46","ChIJ_7nx_mxJXhMRSrp68dDU67M","2","7"); /*user 1 - user 4 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 12:45:12","ChIJ8Uhwphk2XhMR0eyLMUIgSEk","2","43");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 17:44:23","ChIJhTC7IiA2XhMRDXXA5keTbkU","2","10"); /*user 1 - user 4 (2)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 21:00:45","ChIJGyYZay82XhMRYIH_uvIjIH8","2","150");



INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 10:08:23","ChIJ_7nx_mxJXhMRSrp68dDU67M","3","7"); /*user 1 - user 2 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 10:33:44","ChIJYdZBLCY2XhMRZRAQwVO1aEg","3","50");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 14:05:33","ChIJu8vyBuJJXhMRfm0zkEgJDWU","3","13");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 15:12:24","ChIJXXD-Nt1JXhMRWCTJyMxS_Xg","3","32");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 15:52:55","ChIJGyYZay82XhMRYIH_uvIjIH8","3","60");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 19:32:22","ChIJVzAMZC82XhMRbhndkrdgnck","3","20");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 08:31:44","ChIJxZ_BF0lJXhMRgcQowKpjoQ8","3","5");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 10:02:23","ChIJGYPtKyY2XhMRDq5n0hrb108","3","50");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 16:22:01","ChIJowSURxM3XhMRmbAxgMezpu","3","2"); /*user 2 - user 4 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 16:42:23","ChIJk0zmsB82XhMRaUVxT1MhpGY","3","12"); 
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 17:21:51","ChIJOztsXBk2XhMRIu0EEdF27js","3","8");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 23:00:33","ChIJU2cC_5A3XhMRTltBi0TpJVo","3","40");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 08:55:34","ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag","3","10");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 11:53:43","ChIJ53SyUV83XhMRKCtMj0KPkBI","3","9");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 13:04:54","ChIJVQ35PeJJXhMRfqL9-SJiiv0","3","23");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 14:42:13","ChIJYQIxGyE2XhMRupS59ERDUNc","3","72"); /*user 2 - user 3 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 19:23:11","ChIJf0kcnSc2XhMRu-Lg9p3PZjI","3","10");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 22:02:23","ChIJGyYZay82XhMRYIH_uvIjIH8","3","30");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 11:30:22","ChIJ4e-5v05JXhMRDZp4UgNSSqg","3","6"); /*user 2 - user 5 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 13:00:22","ChIJ7f_lJyY2XhMRnOqNQJfMj3g","3","17"); /*user 2 - user 4 (2)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 17:22:44","ChIJYQIxGyE2XhMRupS59ERDUNc","3","70"); /*user 2 - user 3 (2)*/




INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 10:04:23","ChIJ_7nx_mxJXhMRSrp68dDU67M","4","6"); /*user 1 - user 3 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 11:23:51","ChIJE5rqhOFJXhMREi7B5EA45Dw","4","12");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 13:51:31","ChIJQZbR3xQ3XhMRyaR2SBYu29I","4","5");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 18:44:04","ChIJ34_kIOBJXhMR7imf2tRjF3o","4","6");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 22:05:43","ChIJB0BpiiM2XhMR0j9vb-iKkoc","4","55");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 10:46:33","ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag","4","8");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 11:32:51","ChIJw3Fe5Cc2XhMRHcQgQkfA6ok","4","13");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 13:21:55","ChIJu8vyBuJJXhMRfm0zkEgJDWU","4","21");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 14:04:33","ChIJVQ35PeJJXhMRfqL9-SJiiv0","4","26");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 15:32:53","ChIJH1FcPxw2XhMRzjMDiIppoZg","4","10");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 17:43:22","ChIJK2mtFN9JXhMRQgGlzRIXc6k","4","15");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-19 19:02:23","ChIJGyYZay82XhMRYIH_uvIjIH8","4","200"); /*user 1 - user 3 (2)*/

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 09:43:44","ChIJz_07-W03XhMRvRymy1Ccda0","4","15");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 15:02:53","ChIJk0zmsB82XhMRaUVxT1MhpGY","4","21");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-20 16:02:43","ChIJXXD-Nt1JXhMRWCTJyMxS_Xg","4","34"); /*user 1 - user 3 (3)*/

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 07:30:00","ChIJxZ_BF0lJXhMRgcQowKpjoQ8","4","8");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 13:06:52","ChIJFxIYOehJXhMRTnfIBMK7Cjw","4","8");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 14:00:23","ChIJGYPtKyY2XhMRDq5n0hrb108","4","60");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 14:38:23","ChIJYQIxGyE2XhMRupS59ERDUNc","4","56"); /*user 2 - user 3 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-23 20:23:51","ChIJGyYZay82XhMRYIH_uvIjIH8","4","150");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 09:22:44","ChIJz_07-W03XhMRvRymy1Ccda0","4","11");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 10:43:02","ChIJOztsXBk2XhMRIu0EEdF27js","4","6"); 
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 14:00:44","ChIJVQ35PeJJXhMRfqL9-SJiiv0","4","16");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 17:12:54","ChIJYQIxGyE2XhMRupS59ERDUNc","4","65"); /*user 2 - user 3 (2)*/

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-25 14:15:42","ChIJYdZBLCY2XhMRZRAQwVO1aEg","4","44");



INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 10:02:23","ChIJ_7nx_mxJXhMRSrp68dDU67M","5","5"); /*user 1 - user 4 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 11:00:33","ChIJOztsXBk2XhMRIu0EEdF27js","5","3"); 
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 16:00:23","ChIJowSURxM3XhMRmbAxgMezpu","5","3"); /*user 2 - user 4 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 17:33:45","ChIJhTC7IiA2XhMRDXXA5keTbkU","5","5"); /*user 1 - user 4 (2)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-22 18:00:23","ChIJGyYZay82XhMRYIH_uvIjIH8","5","120");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 10:11:42","ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag","5","11");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 12:11:55","ChIJK2mtFN9JXhMRQgGlzRIXc6k","5","5");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 13:05:33","ChIJ7f_lJyY2XhMRnOqNQJfMj3g","5","20"); /*user 2 - user 4 (2)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 14:02:31","ChIJVQ35PeJJXhMRfqL9-SJiiv0","5","24");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 17:53:14","ChIJH1FcPxw2XhMRzjMDiIppoZg","5","15");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 19:44:51","ChIJ0a4YHeBJXhMRgESyORq9JSo","5","4");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-26 08:55:41","ChIJP-URlSY2XhMRXXseyEczfzI","5","16");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-26 11:41:51","ChIJLWNTMuhJXhMRc0uCYczaWys","5","20");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-26 12:33:42","ChIJu8vyBuJJXhMRfm0zkEgJDWU","5","12");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-26 17:42:22","ChIJk0zmsB82XhMRaUVxT1MhpGY","5","13");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-26 20:05:23","ChIJGyYZay82XhMRYIH_uvIjIH8","5","100");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 10:22:41","ChIJP-URlSY2XhMRXXseyEczfzI","5","9");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 13:42:16","ChIJ17ejkhk2XhMRPsEejntj8Mc","5","7");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 16:42:53","ChIJGYPtKyY2XhMRDq5n0hrb108","5","35");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 14:05:24","ChIJ7f_lJyY2XhMRnOqNQJfMj3g","5","34");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 17:41:31","ChIJw3Fe5Cc2XhMRHcQgQkfA6ok","5","9");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 20:44:53","ChIJU2cC_5A3XhMRTltBi0TpJVo","5","50");

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-29 11:06:44","ChIJxZ_BF0lJXhMRgcQowKpjoQ8","5","10");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-29 15:02:52","ChIJ7f_lJyY2XhMRnOqNQJfMj3g","5","30");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-29 21:02:51","ChIJGyYZay82XhMRYIH_uvIjIH8","5","160");



INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 10:02:23","ChIJxZ_BF0lJXhMRgcQowKpjoQ8","6","6");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 13:44:34","ChIJVQ35PeJJXhMRfqL9-SJiiv0","6","21");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-27 21:08:36","ChIJU2cC_5A3XhMRTltBi0TpJVo","6","84");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 10:44:09","ChIJ3WNjGMpJXhMRP2_Mlwzs7Ag","6","8");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 14:21:27","ChIJGYPtKyY2XhMRDq5n0hrb108","6","76");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 16:21:01","ChIJu8vyBuJJXhMRfm0zkEgJDWU","6","31");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 18:52:43","ChIJOztsXBk2XhMRIu0EEdF27js","6","11");
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-21 19:12:23","ChIJYdZBLCY2XhMRZRAQwVO1aEg","6","70"); /*user 1 - user 5 (1)*/

INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 11:21:04","ChIJ4e-5v05JXhMRDZp4UgNSSqg","6","7"); /*user 2 - user 5 (1)*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES ("2022-09-24 19:44:27","ChIJGyYZay82XhMRYIH_uvIjIH8","6","80");