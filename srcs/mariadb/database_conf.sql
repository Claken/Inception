CREATE DATABASE sachoudb;
CREATE USER 'sachouam'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON sachoudb.* TO 'sachouam'@'localhost';
FLUSH PRIVILEGES;