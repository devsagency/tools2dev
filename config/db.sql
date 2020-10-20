DROP DATABASE IF EXISTS `learn2code`;
CREATE DATABASE `learn2code` CHARACTER SET utf8;

USE `learn2code`;

CREATE TABLE `Users`
(
    `id`    SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(50)     NOT NULL,
    `image` VARCHAR(50)     UNIQUE,
    `email` VARCHAR(100)    NOT NULL    UNIQUE,
    `pass`  VARCHAR(100)    NOT NULL,
    `admin` TINYINT(1)      NOT NULL
)
    ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Courses`
(
  `id`      SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`    VARCHAR(20)     NOT NULL    UNIQUE,
  `content` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Exercises`
(
  `id`      SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`    VARCHAR(20)     NOT NULL    UNIQUE,
  `content` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `Resources`
(
  `id`      SMALLINT        UNSIGNED    PRIMARY KEY AUTO_INCREMENT,
  `name`    VARCHAR(20)     NOT NULL    UNIQUE,
  `content` TEXT
)
ENGINE=INNODB DEFAULT CHARSET=utf8;
