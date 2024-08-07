CREATE DATABASE Creative_online_school;
USE Creative_online_school;

## DDL (DATA DEFINATION LANGUALTE) DEFIE DIFFERENT STRUCTURE
CREATE TABLE Cats(id integer NOT NULL auto_increment, name VARCHAR(30),primary key(id));

## DML (Data Manupulation language)
SHOW TABLES;
INSERT INTO cats(name) values("kitty");
SELECT * from Cats;

### DCL (DATA Controll languager) // USED by the database administrator
### Allows or denys people on DDL and DML process
# grant
# revoke

## GRANT
CREATE USER 'baker'@'localhost' IDENTIFIED BY 'passwd';
GRANT ALL PRIVILEGES ON Creative_online_school.* TO 'baker'@'localhost'; 

## IF YOU LOG OUT AND THEN LOGIN YOU CAN LOGIN WITH IT
## BUT YOU CAN ONLY ACCESS WITH THE CREATIVE ONLINE SCHOOL DATABASE




 
