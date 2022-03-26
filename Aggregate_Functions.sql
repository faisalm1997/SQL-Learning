#The COUNT Function 

SELECT COUNT(*) FROM books; #Gives total number of books in the database

SELECT COUNT(author_fname) FROM books;
 
SELECT COUNT(DISTINCT author_fname) FROM books;
 
SELECT COUNT(DISTINCT author_lname) FROM books;
 
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
 
SELECT title FROM books WHERE title LIKE '%the%';
 
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

#The GROUPBY Function 

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname; #Groups by author_lname and counts total books with author_lname

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
 
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
 
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;

#MIN and MAX Functions

SELECT MIN(released_year) FROM books;
 
SELECT MIN(released_year) FROM books;
 
SELECT MIN(pages) FROM books;
 
SELECT MAX(pages) FROM books;
 
SELECT MAX(released_year) FROM books;
 
SELECT MAX(pages), title FROM books;

#Different way of using MIN MAX Functions

SELECT * FROM books WHERE pages = (SELECT Min(pages) FROM books); 
 
SELECT title, pages FROM books WHERE pages = (SELECT Max(pages) FROM books); 

SELECT * FROM books ORDER BY pages ASC LIMIT 1; #Using ASC and LIMIT 

#Using MIN MAX with GROUP BY 

SELECT CONCAT(author_fname, ' ', author_lname) AS author, 
MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;

#The SUM function 

SELECT SUM(pages) FROM books;
SELECT author_fname, author_lname, Sum(released_year)
FROM books GROUP BY author_lname, author_fname; 

#The AVG function 

SELECT AVG(released_year) FROM books;
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;