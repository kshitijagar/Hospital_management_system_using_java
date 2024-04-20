-- MySQL Script generated by MySQL Workbench
-- Sun Apr 21 02:33:17 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hospital` ;

-- -----------------------------------------------------
-- Table `hospital`.`appointment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`appointment` (
  `appointment_id` INT NOT NULL AUTO_INCREMENT,
  `patientName` VARCHAR(255) NULL DEFAULT NULL,
  `doctor_name` VARCHAR(255) NULL DEFAULT NULL,
  `appointment_date` DATE NULL DEFAULT NULL,
  `prescription` TEXT NULL DEFAULT NULL,
  `confirmed` VARCHAR(255) NULL DEFAULT NULL,
  `patient_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`appointment_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`event` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `title` VARCHAR(255) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `start` DATETIME NULL DEFAULT NULL,
  `finish` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`invoice` (
  `invoiceID` INT NOT NULL AUTO_INCREMENT,
  `patient_name` VARCHAR(100) NULL DEFAULT NULL,
  `appointmentID` INT NULL DEFAULT NULL,
  `invoice` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`invoiceID`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`prescription` (
  `prescriptionID` INT NOT NULL AUTO_INCREMENT,
  `appointmentID` INT NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `patient_name` VARCHAR(255) NULL DEFAULT NULL,
  `doctor_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`prescriptionID`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
