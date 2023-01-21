

/* Team Two
SQL Insert Statements
January 21, 2023
mysql -u root -p */


-- drop database
DROP DATABASE provisio;

-- show databases
SHOW DATABASES;

-- create whatabook database
CREATE DATABASE provisio;

-- activate database
USE provisio;


-- drop test user if exists 
DROP USER IF EXISTS 'provisio_user'@'localhost';

-- Create whatabook_user and grant them all privileges to the whatabook database 
CREATE USER 'provisio_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

-- Grant all privileges to the whatabook database to user whatabook_user on localhost 
GRANT ALL PRIVILEGES ON provisio.* TO'provisio_user'@'localhost';

FLUSH PRIVILEGES;

USE provisio;

-- DROP TABLES IF THEY EXISTS
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS reservation;


-- CREATE USER TABLE
CREATE TABLE user (
    id              INT             NOT NULL        AUTO_INCREMENT,
    first_name      VARCHAR(75)     NOT NULL,
    last_name       VARCHAR(75)     NOT NULL,
    email           VARCHAR(255)    NOT NULL,
    passphrase      VARCHAR(255)    NOT NULL,
    PRIMARY KEY(id)
);
-- INSERT INTO SQL COMMANDS FOR USERS
INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78');

INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78');

INSERT INTO user(first_name, last_name, email, passphrase)
    VALUES('Darell', 'Reese', 'dreese@gmail.com', 'Python%78');



-- CREATE TABLE PLACE (LOCATION IS A KEYWORD IN MYSQL)

CREATE TABLE place (
    place_id        INT             NOT NULL        AUTO_INCREMENT,
    city            VARCHAR(75)     NOT NULL,
    ind_state       VARCHAR(75)     NOT NULL,
    zip             VARCHAR(255)    NOT NULL,
    picture         VARCHAR(300)    NOT NULL,
    PRIMARY KEY(place_id)
);

-- INSERT INTO PLACE TABLE

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Orlando', 'Florida', '32819', 'orlando.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('Miami', 'Florida', '33141', 'miami.jpg');

INSERT INTO place(city, ind_state, zip, picture)
    VALUES('New York', 'New York', '10011', 'newyork.jpg');


-- CREATE TABLE HOTEL

CREATE TABLE hotel (
    hotel_id        INT             NOT NULL        AUTO_INCREMENT,
    hotel_name      VARCHAR(75)     NOT NULL,
    price           INT             NOT NULL,
    descrip         VARCHAR(255)    NOT NULL,
    amenitites      VARCHAR(300)    NOT NULL,
    location_id     INT             NOT NULL,
    PRIMARY KEY(hotel_id)
    -- May need to add a foreign key for location_id
);


-- INSERT INTO SQL COMMANDS

INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'Old Key West', 
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );

INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'Old Key West', 
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );

INSERT INTO hotel(hotel_name, price, descrip, amenitites, location_id)
    VALUES(
        'Old Key West', 
        500, 
        'Family fun resort style stay', 
        'Pool, Tennis, Gym, Amusement Parks, Restaurants', 
        (SELECT place_id FROM place where city = 'Orlando')
        );


-- CREATE TABLE RESERVATIONS













-- EXAMPLE FOR THE RESERVATIONS TABLE
CREATE TABLE wishlist (
    wishlist_id     INT             NOT NULL        AUTO_INCREMENT,
    user_id         INT             NOT NULL        AUTO_INCREMENT,
    book_id         INT             NOT NULL        AUTO_INCREMENT,
    PRIMARY KEY(wishlist_id)
    CONSTRAINT fk_book
    FOREIGN KEY (book_id)
        REFERENCES book(book_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_Id)
); 

INSERT INTO wishlist(user_id, book_id) 
    VALUES (
        (SELECT user_id FROM user WHERE first_name = 'Bilbo'),
        (SELECT book_id FROM book WHERE book_name = 'The Fellowship of the Ring')
    );
