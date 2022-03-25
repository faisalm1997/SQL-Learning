#Inserting data:

INSERT INTO <tablename> (x1, x2) VALUES ('y1', y2)

#Using cats names as examples: 

CREATE TABLE cats 
  ( 
     cat_id INT NOT NULL AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 

#Inserting some data into the cats table: 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
      
#Selecting all data in the table: 

SELECT * FROM cats;

#Using where to select by category e.g. age: 

SELECT * FROM cats WHERE age=4;

#Aliases: 

SELECT cat_id AS id, name FROM cats;

#Update command - changing tabby cats to shorthair:

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 

#Deleting data:

DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;
 
DELETE FROM cats;