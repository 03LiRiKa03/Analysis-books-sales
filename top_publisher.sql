SELECT 
    publisher,
    COUNT(book_name) AS cnt_book_name

FROM 'your_table'

GROUP BY publisher

ORDER BY cnt_book_name DESC;
