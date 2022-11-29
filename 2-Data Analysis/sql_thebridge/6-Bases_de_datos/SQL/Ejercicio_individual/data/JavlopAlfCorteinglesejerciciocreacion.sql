/*******************************************************************************
   Chinook Database - Version 1.4
   Script: CORTEINGLESsCRIPT.sql
   Description: Creates and populates the database.
   DB Server: MySql
   Author: ALBERTO LAZARO
   License: http://www.codeplex.com/ChinookDatabase/license
********************************************************************************/

/*******************************************************************************
   Drop database if it exists
********************************************************************************/
DROP DATABASE IF EXISTS `eci`;

/*******************************************************************************
   Create database
********************************************************************************/
CREATE DATABASE `eci`;

USE `eci`;

/*******************************************************************************
   Create Tables
********************************************************************************/
CREATE TABLE `DEPTO_CAMPANIA`
(
    `ID_DPTO` INT NOT NULL,
    `ID_CAMPANIA` NVARCHAR(160) NOT NULL
);

CREATE TABLE `DEPARTAMENTO`
(
    `ID_DPTO` INT NOT NULL,
    `DESC_DPTO` NVARCHAR(160) NOT NULL,
    CONSTRAINT `PK_DEPARTAMENTO` PRIMARY KEY  (`ID_DPTO`)
);
CREATE TABLE `FAMILIA`
(
    `ID_DPTO` INT NOT NULL,
    `COD_FAMILIA` NVARCHAR(160) NOT NULL,
    `DESC_FAMILIA` NVARCHAR(160) NOT NULL,
    CONSTRAINT `PK_FAMILIA` PRIMARY KEY  (`COD_FAMILIA`)
);

CREATE TABLE `ARTICULO`
(
    `REFERENCIA` NVARCHAR(160) NOT NULL,
    `ID_DPTO` INT NOT NULL,
    `COD_FAMILIA` NVARCHAR(160) NOT NULL,
    `FECHA_ALTA` DATETIME NOT NULL,
    CONSTRAINT `PK_ARTICULO` PRIMARY KEY  (`REFERENCIA`)
);
CREATE TABLE `CAMPANIA`
(
    `ID_CAMPANIA` NVARCHAR(160) NOT NULL,
    `TIPO` NVARCHAR(160) NOT NULL,
    `FECHA_CAMP` DATETIME NOT NULL,
    CONSTRAINT `PK_CAMPANIA` PRIMARY KEY  (`ID_CAMPANIA`)
);
CREATE TABLE `VENTA`
(
    `TALON` INT NOT NULL,
    `REFERENCIA` NVARCHAR(160) NOT NULL,
    `PRECIO` NUMERIC(10,2) NOT NULL,
    `FECHA_VENTA` DATETIME NOT NULL,
    CONSTRAINT `PK_VENTA` PRIMARY KEY  (`TALON`)
);

/*******************************************************************************
   Create Primary Key Unique Indexes
********************************************************************************/

/*******************************************************************************
   Create Foreign Keys
********************************************************************************/    
 /*    
ALTER TABLE `DEPTO_CAMPANIA` ADD CONSTRAINT `FK_DEPTO_CAMPANIA`
    FOREIGN KEY (`ID_DPTO`) REFERENCES `DEPARTAMENTO` (`ID_DPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
CREATE INDEX `IFK_DEPTO_CAMPANIA` ON `DEPTO_CAMPANIA` (`ID_DPTO`);

ALTER TABLE `DEPARTAMENTO` ADD CONSTRAINT `FK_DEPARTAMENTO`
    FOREIGN KEY (`ID_DPTO`) REFERENCES `FAMILIA` (`ID_DPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
CREATE INDEX `IFK_DEPTARTAMENTO` ON `DEPTO_CAMPANIA` (`ID_DPTO`);

ALTER TABLE `FAMILIA` ADD CONSTRAINT `FK_FAMILIA`
    FOREIGN KEY (`ID_DPTO`) REFERENCES `ARTICULO` (`ID_DPTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;
CREATE INDEX `IFK_FAMILIA` ON `FAMILIA` (`ID_DPTO`);

ALTER TABLE `VENTA` ADD CONSTRAINT `FK_VENTA`
    FOREIGN KEY (`REFERENCIA`) REFERENCES `ARTICULO` (`REFERENCIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;
CREATE INDEX `IFK_VENTA` ON `ARTICULO` (`REFERENCIA`);

ALTER TABLE `DEPTO_CAMPANIA` ADD CONSTRAINT `FK_DEPTO_CAMPANIA`
    FOREIGN KEY (`ID_CAMPANIA`) REFERENCES `CAMPANIA` (`ID_CAMPANIA`) ON DELETE NO ACTION ON UPDATE NO ACTION;
CREATE INDEX `IFK_DEPTO_CAMPANIA` ON `CAMPANIA` (`ID_CAMPANIA`);
*/
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (1, '1F1','PULSERAS');
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (1, '1F2','ANILLOS');
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (2, '2F1','BOLSO DE MANO');
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (3, '3F1','NAUTICO');
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (3, '3F2','SANDALIAS');
INSERT INTO `familia` (`ID_DPTO`, `COD_FAMILIA`,`DESC_FAMILIA`) VALUES (4, '4F1','BERMUDAS');
INSERT INTO `departamento` (`ID_DPTO`, `DESC_DPTO`) VALUES (1, 'JOYERIA');
INSERT INTO `departamento` (`ID_DPTO`, `DESC_DPTO`) VALUES (2, 'BOLSOS');
INSERT INTO `departamento` (`ID_DPTO`, `DESC_DPTO`) VALUES (3, 'ZAPATERIA');
INSERT INTO `departamento` (`ID_DPTO`, `DESC_DPTO`) VALUES (4, 'BANO CAB');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('A', '1','1F1','2010-02-21');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('B', '2','2F1','2014-02-07');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('C', '2','2F1','2014-05-15');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('D', '2','2F1','2005-10-01');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('E', '2','2F1','2010-10-30');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('F', '3','3F1','2001-04-20');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('G', '3','3F2','2015-02-14');
INSERT INTO `articulo` (`REFERENCIA`, `ID_DPTO`,`COD_FAMILIA`,`FECHA_ALTA`) VALUES ('H', '4','4F1','2009-03-25');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA1', 'VENTA','2012-02-05');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA2', 'VENTA','2012-02-15');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA3', 'POSVENTA','2009-10-02');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA4', 'VENTA','2010-10-02');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA5', 'POSVENTA','2010-11-30');
INSERT INTO `campania` (`ID_CAMPANIA`, `TIPO`,`FECHA_CAMP`) VALUES ('CA6', 'POSVENTA','2015-02-07');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (01, 'A' ,'15','2012-02-11');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (02, 'A' ,'18','2012-02-15');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (03, 'A' ,'14','2013-10-02');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (04, 'D' ,'37.95','2010-08-06');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (05, 'E' ,'125.95','2010-11-30');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (06, 'E' ,'150','2011-02-05');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (07, 'H' ,'22.99','2010-04-11');
INSERT INTO `venta` (`TALON`, `REFERENCIA`,`PRECIO`,`FECHA_VENTA`) VALUES (08, 'H' ,'24','2011-08-08');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (1, 'CA1');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (1, 'CA4');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (2, 'CA2');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (3, 'CA2');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (3, 'CA5');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (3, 'CA6');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (4, 'CA1');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (4, 'CA2');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (4, 'CA3');
INSERT INTO `depto_campania` (`ID_DPTO`, `ID_CAMPANIA`) VALUES (4, 'CA6');

