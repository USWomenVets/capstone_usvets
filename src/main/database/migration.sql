create database IF NOT EXISTS USWemonVets;

use USWemonVets;

CREATE TABLE IF NOT EXISTS `USWemonVets`.`roles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `USWemonVets`.`users` (
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
  `prof_img_direct` VARCHAR(64) NULL,
  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_online` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `role_idx` (`role_id` ASC),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  CONSTRAINT `role`
  FOREIGN KEY (`role_id`)
  REFERENCES `USWemonVets`.`roles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `USWemonVets`.`private_message` (
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
  REFERENCES `USWemonVets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `USWemonVets`.`posts` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(64) NOT NULL,
  `content` VARCHAR(1024) NOT NULL,
  `post_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` INT NULL,
  `likes` INT NULL,
  `comment_count` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`)
  REFERENCES `USWemonVets`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `USWemonVets`.`comments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` INT UNSIGNED NOT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  `comment` VARCHAR(512) NOT NULL,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `post_id_idx` (`post_id` ASC),
  CONSTRAINT `post_id`
  FOREIGN KEY (`post_id`)
  REFERENCES `USWemonVets`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  ENGINE = InnoDB;
