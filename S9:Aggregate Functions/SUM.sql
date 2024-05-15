SELECT SUM(pages) FROM books;
 
 
SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;