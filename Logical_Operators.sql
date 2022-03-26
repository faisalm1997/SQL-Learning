#Using the books database
#NOT EQUAL query 

SELECT title FROM books WHERE released_year = 2017; #EQUAL
 
SELECT title FROM books WHERE released_year != 2017; #NOT EQUAL
 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris'; #EQUAL
 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris'; #NOT EQUAL 

#NOT LIKE query 

SELECT title FROM books WHERE title LIKE 'W%'; #LIKE 
 
SELECT title FROM books WHERE title NOT LIKE 'W%'; #NOT LIKE 

#GREATER THAN 

SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;
 
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;
 
SELECT title, stock_quantity FROM books;
 
SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
 
SELECT 99 > 1;
 
SELECT 99 > 567;

#LESS THAN 

SELECT title, released_year FROM books
WHERE released_year < 2000;
 
SELECT title, released_year FROM books
WHERE released_year <= 2000;
 
SELECT 3 < -10;
-- false
 
SELECT -10 < -9;
-- true
 
SELECT 42 <= 42;
-- true
 
SELECT 'h' < 'p';
-- true
 
SELECT 'Q' <= 'q';
-- true

#LOGICAL AND 

SELECT 1 < 5 && 7 = 9;
-- false
 
SELECT -10 > -20 && 0 <= 0;
-- true
 
SELECT -40 <= 0 AND 10 > 40;
--false
 
SELECT 54 <= 54 && 'a' = 'A';
-- true

#LOGICAL OR 

SELECT 40 <= 100 || -2 > 0;
-- true
 
SELECT 10 > 5 || 5 = 5;
-- true
 
SELECT 'a' = 5 || 3000 > 2000;
-- true

#BETWEEN query 

SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;
 
SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;
 
#IN and NOT IN query 

SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
 
SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);

SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);
 
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

#Case Statements 

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;
 
SELECT title,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;