-- MySQL Script generated by MySQL Workbench
-- Fri Mar  3 11:33:37 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema stud_v23_kma150
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema stud_v23_kma150
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `stud_v23_kma150` DEFAULT CHARACTER SET utf8 ;
USE `stud_v23_kma150` ;

-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`ansatte`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`ansatte` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`ansatte` (
  `AnsattNR` INT NOT NULL AUTO_INCREMENT,
  `Fornavn` VARCHAR(45) NOT NULL,
  `Etternavn` VARCHAR(45) NOT NULL,
  `Avdeling` INT NOT NULL,
  PRIMARY KEY (`AnsattNR`),
  INDEX `fk_ansatte_avdelinger1_idx` (`Avdeling` ASC) VISIBLE,
  CONSTRAINT `fk_ansatte_avdelinger1`
    FOREIGN KEY (`Avdeling`)
    REFERENCES `stud_v23_kma150`.`avdelinger` (`AvdelingNR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`avdelinger`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`avdelinger` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`avdelinger` (
  `AvdelingNR` INT NOT NULL AUTO_INCREMENT,
  `AvdelingsNavn` VARCHAR(45) NOT NULL,
  `AvdelingsLeder` INT NOT NULL,
  PRIMARY KEY (`AvdelingNR`),
  INDEX `fk_avdelinger_ansatte_idx` (`AvdelingsLeder` ASC) VISIBLE,
  CONSTRAINT `fk_avdelinger_ansatte`
    FOREIGN KEY (`AvdelingsLeder`)
    REFERENCES `stud_v23_kma150`.`ansatte` (`AnsattNR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`basismatvarer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`basismatvarer` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`basismatvarer` (
  `Matvare` VARCHAR(45) NOT NULL,
  `Edible` INT NULL DEFAULT 0,
  `Warter` INT NULL DEFAULT 0,
  `kJ` INT NULL DEFAULT 0,
  `kcal` INT NULL DEFAULT 0,
  `Fat` INT NULL DEFAULT 0,
  `Carbs` INT NULL DEFAULT 0,
  `Fiber` INT NULL DEFAULT 0,
  `Protein` INT NULL DEFAULT 0,
  `Alcho` INT NULL DEFAULT 0,
  PRIMARY KEY (`Matvare`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`måltider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`måltider` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`måltider` (
  `MåltidNR` INT NOT NULL AUTO_INCREMENT,
  `MåltidNavn` VARCHAR(45) NOT NULL,
  `Leveringsklokkeslett` TIME NOT NULL,
  PRIMARY KEY (`MåltidNR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`måltidsordrer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`måltidsordrer` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`måltidsordrer` (
  `OrderNR` INT NOT NULL AUTO_INCREMENT,
  `Måltid` INT NOT NULL,
  `Status` ENUM("ikke behandlet", "under behandling", "klar", "effektuert") NULL,
  `Mottaker` INT NOT NULL,
  `LeveringsDato` DATE NOT NULL,
  `BestillingsDato` DATE DEFAULT NOW(),
  CONSTRAINT `BestillingsDatoSjekk` CHECK (`LeveringsDato` > `BestillingsDato`),
  PRIMARY KEY (`OrderNR`),
  INDEX `fk_måltidsordrer_måltider1_idx` (`Måltid` ASC) VISIBLE,
  INDEX `fk_måltidsordrer_avdelinger1_idx` (`Mottaker` ASC) VISIBLE,
  CONSTRAINT `fk_måltidsordrer_måltider1`
    FOREIGN KEY (`Måltid`)
    REFERENCES `stud_v23_kma150`.`måltider` (`MåltidNR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_måltidsordrer_avdelinger1`
    FOREIGN KEY (`Mottaker`)
    REFERENCES `stud_v23_kma150`.`avdelinger` (`AvdelingNR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`basismatvarer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`basismatvarer` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`basismatvarer` (
  `Matvare` VARCHAR(45) NOT NULL,
  `Edible` INT NULL DEFAULT 0,
  `Warter` INT NULL DEFAULT 0,
  `kJ` INT NULL DEFAULT 0,
  `kcal` INT NULL DEFAULT 0,
  `Fat` INT NULL DEFAULT 0,
  `Carbs` INT NULL DEFAULT 0,
  `Fiber` INT NULL DEFAULT 0,
  `Protein` INT NULL DEFAULT 0,
  `Alcho` INT NULL DEFAULT 0,
  PRIMARY KEY (`Matvare`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `stud_v23_kma150`.`basismatvarer_has_måltider`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stud_v23_kma150`.`basismatvarer_has_måltider` ;

CREATE TABLE IF NOT EXISTS `stud_v23_kma150`.`basismatvarer_has_måltider` (
  `basismatvarer_Matvare` VARCHAR(45) NOT NULL,
  `måltider_MåltidNR` INT NOT NULL,
  `Mengde` INT NULL,
  PRIMARY KEY (`basismatvarer_Matvare`, `måltider_MåltidNR`),
  INDEX `fk_basismatvarer_has_måltider_måltider1_idx` (`måltider_MåltidNR` ASC) VISIBLE,
  INDEX `fk_basismatvarer_has_måltider_basismatvarer1_idx` (`basismatvarer_Matvare` ASC) VISIBLE,
  CONSTRAINT `fk_basismatvarer_has_måltider_basismatvarer1`
    FOREIGN KEY (`basismatvarer_Matvare`)
    REFERENCES `stud_v23_kma150`.`basismatvarer` (`Matvare`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_basismatvarer_has_måltider_måltider1`
    FOREIGN KEY (`måltider_MåltidNR`)
    REFERENCES `stud_v23_kma150`.`måltider` (`MåltidNR`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
