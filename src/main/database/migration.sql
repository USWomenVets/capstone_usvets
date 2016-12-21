

CREATE DATABASE IF NOT EXISTS adlister_db;


USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    timestamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT into users (username, email, password)
values ('admin', 'admin@admin.com', '$2a$12$qvN2lmHtrbpwBABUKezD8.uYc/KgyaXlBnQmzzULG4HnfO1/Gq6.2');

INSERT into users (username, email, password)
values ('user1', 'user1@email.com', '$2a$12$vfWVrfDJmfjR6bgre5by7eALCas3VdHun1ZS30K5RNEonE9tfDj2e');


INSERT INTO ads (user_id, title, description) VALUES (1, 'sample ad title', 'sample ad description advertising stuff to sell with random text that is coming off the top of my head to fill in pace to simulate a decent sized description');

INSERT INTO ads (user_id, title, description) VALUES (1, 'another sample title', 'the second ad description for the user admin to test sorting ads for only admin on the user\'s profile page');

INSERT INTO ads (user_id, title, description) VALUES (2, 'user1 sample title', 'ting ads for only admin on ththe second ad description for the user admin to test sore admin on ththe second ad descuser\'s profile page');


/*select statement to join users and ads used to list all ads*/
select ads.* , users.username from ads join users ON users.id = ads.user_id;

SELECT ads.* , users.username FROM ads JOIN users ON users.id = ads.user_id where users.id = 1;

