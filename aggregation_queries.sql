-- Task 4 Aggregation
USE library_db;

SELECT COUNT(*) AS total_books FROM books;
SELECT author_id, COUNT(*) FROM books GROUP BY author_id HAVING COUNT(*) > 1;
