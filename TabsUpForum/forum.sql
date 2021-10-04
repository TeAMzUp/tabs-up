CREATE DATABASE IF NOT EXISTS forum;

CREATE TABLE messages (`idM` INT NOT NULL AUTO_INCREMENT, `nameU` VARCHAR(100) NOT NULL DEFAULT 'Unknown', `msg` TEXT,  `idR` INT NOT NULL DEFAULT '1', `DateM` DATETIME COMMENT 'msg date', PRIMARY KEY (`idM`)) ENGINE = MyISAM;

INSERT INTO messages(`idM`, `nameU`, `msg`, `idR`, `dateM`) VALUES ('0', 'Admin', 'Hello world', '1', '2021-08-26 10:44:00');

select * from messages;

CREATE TABLE rooms ( `idR` INT NOT NULL AUTO_INCREMENT, `nameR` VARCHAR(100) NOT NULL DEFAULT 'Home', `creatorR` VARCHAR(100) NOT NULL DEFAULT 'Admin', `DateR` DATETIME COMMENT 'room creation date', PRIMARY KEY (`idR`)) ENGINE = MyISAM;

INSERT INTO `rooms`(`idR`, `nameR`, `creatorR`, `dateR`) VALUES ('1', 'Home', 'Admin', '1984-01-01 12:00:00');

select * from rooms;