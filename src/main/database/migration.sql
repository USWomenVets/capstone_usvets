-- MySQL Script generated by MySQL Workbench
-- Wed Jan 18 10:21:47 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema uswomenvets
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema uswomenvets
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `uswomenvets` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema uswomenvets
-- -----------------------------------------------------
-- This schema was created for a stub table

-- -----------------------------------------------------
-- Schema uswomenvets
--
-- This schema was created for a stub table
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `uswomenvets` ;
USE `uswomenvets` ;

-- -----------------------------------------------------
-- Table `uswomenvets`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `birth` DATE NULL,
  `age` INT(3) UNSIGNED NULL,
  `gender` CHAR(1) NULL,
  `creation_date` DATE NOT NULL,
  `role_id` INT(2) UNSIGNED NOT NULL,
  `prof_img_direct` VARCHAR(256) NULL,
  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_online` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `role_idx` (`role_id` ASC),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  CONSTRAINT `role`
  FOREIGN KEY (`role_id`)
  REFERENCES `uswomenvets`.`roles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`posts` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(64) NOT NULL,
  `content` VARCHAR(1024) NOT NULL,
  `post_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` INT NULL,
  `likes` INT NULL,
  `comment_count` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC),
  CONSTRAINT `user_id`
  FOREIGN KEY (`user_id`)
  REFERENCES `uswomenvets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`comments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `comment` VARCHAR(512) NOT NULL,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `post_id_idx` (`post_id` ASC),
  CONSTRAINT `post_id`
  FOREIGN KEY (`post_id`)
  REFERENCES `uswomenvets`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`private_message`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`private_message` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id_sender` INT UNSIGNED NOT NULL,
  `user_id_reciever` INT UNSIGNED NOT NULL,
  `title` VARCHAR(32) NOT NULL,
  `content` VARCHAR(256) NOT NULL,
  `send_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_date` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id_sender` ASC),
  CONSTRAINT `user_id`
  FOREIGN KEY (`user_id_sender`)
  REFERENCES `uswomenvets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`tags` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`tag_post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`tag_post` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` INT UNSIGNED NOT NULL,
  `post_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `tag_id_idx` (`tag_id` ASC),
  INDEX `post_id_idx` (`post_id` ASC),
  CONSTRAINT `tp_tag_id`
  FOREIGN KEY (`tag_id`)
  REFERENCES `uswomenvets`.`tags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tp_post_id`
  FOREIGN KEY (`post_id`)
  REFERENCES `uswomenvets`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`category_post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`category_post` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` INT UNSIGNED NOT NULL,
  `category_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `post_id_idx` (`post_id` ASC),
  INDEX `category_id_idx` (`category_id` ASC),
  CONSTRAINT `cp_post_id`
  FOREIGN KEY (`post_id`)
  REFERENCES `uswomenvets`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cp_category_id`
  FOREIGN KEY (`category_id`)
  REFERENCES `uswomenvets`.`category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;

USE `uswomenvets` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
