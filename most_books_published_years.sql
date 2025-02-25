SELECT 
    publishing_year,
    COUNT(book_name) AS cnt_book_name 
FROM 
    'your_table'
GROUP BY 
    publishing_year
ORDER BY 
    cnt_book_name DESC;
