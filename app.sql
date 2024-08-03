CREATE DATABASE linkedin_clone;

USE linkedin_clone;

CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE profile (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    headline VARCHAR(255),
    summary TEXT,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);
