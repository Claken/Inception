CREATE DATABASE sachouam;
CREATE USER 'sachouam'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON sachouam.* TO 'sachouam'@'localhost';
FLUSH PRIVILEGES;
