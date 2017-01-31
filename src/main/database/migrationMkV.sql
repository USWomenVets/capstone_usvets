-- MySQL Script generated by MySQL Workbench
-- Wed Jan 18 16:15:37 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema uswomenvets
-- -----------------------------------------------------
DROP SCHEMA uswomenvets;
CREATE SCHEMA IF NOT EXISTS `uswomenvets` DEFAULT CHARACTER SET utf8 ;
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
  `user_name` VARCHAR(64) NOT NULL,
  `password` VARCHAR(64) NOT NULL,
  `email` VARCHAR(64) NOT NULL,
  `role_id` INT(2) UNSIGNED NOT NULL DEFAULT '1',
  `first_name` VARCHAR(32) NOT NULL,
  `last_name` VARCHAR(32) NOT NULL,
  `about` VARCHAR(512) NULL,
  `birth` DATE NULL,
  `age` VARCHAR(3) NULL,
  `gender` VARCHAR(32) NULL DEFAULT 'N/A',
  `prof_img` VARCHAR(64) NULL,
  `creation_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `id`            INT UNSIGNED  NOT NULL AUTO_INCREMENT,
  `user_id`       INT UNSIGNED  NOT NULL,
  `title`         VARCHAR(64)   NOT NULL,
  `content`       VARCHAR(1024) NOT NULL,
  `post_date`     DATETIME      NOT NULL DEFAULT current_timestamp,
  `views`         INT           NULL,
  `likes`         INT           NULL,
  `comment_count` INT           NULL,
  `is_deleted`    TINYINT(1)    NOT NULL DEFAULT 0,
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
  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` TINYINT(1) NOT NULL DEFAULT 0,
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
  INDEX `user_id_sender_idx` (`user_id_sender` ASC),
  CONSTRAINT `id`
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


-- -----------------------------------------------------
-- Table `uswomenvets`.`friend_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`friend_list` (
  `user_id` INT UNSIGNED NOT NULL,
  `user_friend_id` INT UNSIGNED NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_removed` DATETIME NULL DEFAULT NULL,
  INDEX `fl_user_id_idx` (`user_id` ASC),
  CONSTRAINT `fl_user_id`
  FOREIGN KEY (`user_id`)
  REFERENCES `uswomenvets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `uswomenvets`.`login_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `uswomenvets`.`login_log` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `action` INT(1) NOT NULL,
  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `login_user_id_idx` (`user_id` ASC),
  CONSTRAINT `lin_user_id`
  FOREIGN KEY (`user_id`)
  REFERENCES `uswomenvets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;

USE `uswomenvets` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- database default inserts
-- -----------------------------------------------------
-- account password is 'password' for both
-- the PW for admin will need to be changed before website is hosted publicly
INSERT INTO roles (id, role) VALUES (1, 'USER');
INSERT INTO roles (id, role) VALUE  (2, 'ADMIN');
INSERT INTO users(user_name, email, password, role_id, first_name, last_name) VALUES ('admin', 'admin@email.com', '$2a$12$XA2t4QQrC3TS1.AtTf80l.octvZiqUisKqW1p2eBTnmvQqNTIu63W', '2','admin', 'admin' );
INSERT INTO users(user_name, email, password, role_id, first_name, last_name) VALUES ('user', 'user@email.com', '$2a$12$ILFkbN897jAyr5VjIOfr5ua5x65a3XyoHgbT5nvMeq9DXDFh0SICa', '1', 'user', 'user' );
INSERT INTO users(user_name, email, password, role_id, first_name, last_name) VALUES ('Jane', 'Jane@email.com', '$2a$12$ILFkbN897jAyr5VjIOfr5ua5x65a3XyoHgbT5nvMeq9DXDFh0SICa', '1', 'Jane', 'Janey' );
INSERT INTO users(user_name, email, password, role_id, first_name, last_name) VALUES ('Paula', 'Lannerson@email.com', '$2a$12$ILFkbN897jAyr5VjIOfr5ua5x65a3XyoHgbT5nvMeq9DXDFh0SICa', '1', 'Paula', 'Lanner' );
INSERT INTO users(user_name, email, password, role_id, first_name, last_name) VALUES ('Sandy', 'Wendy@email.com', '$2a$12$ILFkbN897jAyr5VjIOfr5ua5x65a3XyoHgbT5nvMeq9DXDFh0SICa', '1', 'Sandy', 'Wendy' );



INSERT INTO posts(user_id, title, content, views, likes) VALUES ('2', 'the least known businesses that accept military discount', 'I have written a list of local businesses that offer military discounts that may you may not have known about', '433', '243');
INSERT INTO posts(user_id, title, content, views, likes) VALUES ('1', 'Policy changes that may affect your benefits', 'Major changes to the county may have influence on your purchase decisions. please contact your local VA to find if you are qualified to apply for comensation.', '24242', '234');
INSERT INTO posts(user_id, title, content, views, likes) VALUES ('2', 'the least known businesses that accept military discount', 'I have written a list of local businesses that offer military discounts that may you may not have known about', '434', '2432');
INSERT INTO posts(user_id, title, content, views, likes) VALUES ('2', 'Hosting a picnic', 'We were hosting a get together at Mcalister park', '42', '43');


INSERT INTO category (category) VALUE  ("general");
INSERT INTO category (category) VALUE  ("events");
INSERT INTO category (category) VALUE  ("employment");
INSERT INTO category (category) VALUE  ("wellness");

INSERT INTO category_post(post_id, category_id) VALUES ('1', '1');
INSERT INTO category_post(post_id, category_id) VALUES ('2', '1');
INSERT INTO category_post(post_id, category_id) VALUES ('3', '1');
INSERT INTO category_post(post_id, category_id) VALUES ('4', '1');

INSERT INTO comments (post_id, user_id, comment) VALUES (1, 3, "Ill Have to call in!");
INSERT INTO comments (post_id, user_id, comment) VALUES (2, 4, "Thank you so much for the information");
INSERT INTO comments (post_id, user_id, comment) VALUES (4, 5, "that sounds like a great time! Weather is going to be perfect");
INSERT INTO comments (post_id, user_id, comment) VALUES (4, 4, "Ill meet yall there Ill bring some brisket.");






-- user creation:
-- INSERT INTO users(user_name, email, password) VALUES ('Kenny', 'Kenny@email.com', '$2a$04$wqH/W9evMVOTXdFk8ogSguIFa5voJiLBbnzBVDtgZ4Nnc9Ug5va22');