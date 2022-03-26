#Adding some new books to the existing books database 

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
#Refining selection - DISTINCT 

SELECT DISTINCT author_lname FROM books;


SELECT DISTINCT CONCAT(author_fname,' ', author_lname) FROM books;
 
SELECT DISTINCT author_fname, author_lname FROM books;

#Sorting data with ORDER BY

SELECT author_lname FROM books ORDER BY author_lname;

SELECT title FROM books ORDER BY title;
SELECT author_lname FROM books ORDER BY author_lname DESC;
 
SELECT released_year FROM books ORDER BY released_year; 
 
SELECT released_year FROM books ORDER BY released_year DESC; #Descending order 
 
SELECT released_year FROM books ORDER BY released_year ASC; #Ascending order 

SELECT title, author_fname, author_lname 
FROM books ORDER BY 1 DESC;
 
SELECT author_lname, title
FROM books ORDER BY 2;

#Using LIMIT 

SELECT title FROM books LIMIT 1 #Limits to the first title in the database

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5; #Descending order in the database, giving first 5 titles 

#Better searches by using LIKE 

SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
SELECT title FROM books WHERE  title LIKE 'the';
 
SELECT title FROM books WHERE  title LIKE '%the';
 
SELECT title FROM books WHERE title LIKE '%the%';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____'; #Gives books from database which has stock quantity of 4 figures
 
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 