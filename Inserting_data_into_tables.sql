#Inserting data into tables: 

INSERT INTO table_name(column_name) VALUES (data);

#To see all data in table:

SELECT * FROM table_name;

#Inserting multiple lines of data into table:

INSERT INTO table_name 
            (column_name, column_name) 
VALUES      (value, value), 
            (value, value), 
            (value, value);
           
#Setting a default value in a table: 

CREATE TABLE <tablename>
  (
    name VARCHAR(20) DEFAULT 'no name provided',
    age INT DEFAULT 99
  );
  
#Defining a table with a primary key constraint: 

CREATE TABLE <tablename>
  (
    <id> INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY (<id>)
  );
  
