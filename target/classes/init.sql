DROP DATABASE IF EXISTS tennisclub;
DROP USER IF EXISTS tennisclub@localhost;

CREATE DATABASE tennisclub;
CREATE USER tennisclub@localhost;
GRANT ALL PRIVILEGES ON tennisclub.* TO tennisclub@localhost;

USE tennisclub;

CREATE TABLE members
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
