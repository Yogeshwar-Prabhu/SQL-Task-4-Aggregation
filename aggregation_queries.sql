USE library_db;

-- Count total books
SELECT COUNT(*) AS total_books FROM books;

-- Count books by each author
SELECT author_id, COUNT(*) AS books_written
FROM books
GROUP BY author_id;

-- Average published year
SELECT AVG(published_year) AS avg_year FROM books;

-- Sum of all published years (just as example)
SELECT SUM(published_year) AS total_years FROM books;

-- GROUP BY with HAVING
SELECT author_id, COUNT(*) AS total_books
FROM books
GROUP BY author_id
HAVING COUNT(*) > 1;

-- Highest published year
SELECT MAX(published_year) AS latest_book FROM books;

-- Count distinct genres
SELECT COUNT(DISTINCT genre) AS distinct_genres FROM books;
