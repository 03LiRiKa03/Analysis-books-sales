SELECT 
    book_name,
    book_average_rating,
    book_ratings_count

FROM `your_table`

ORDER BY 
    book_average_rating DESC,
    book_ratings_count DESC

LIMIT 10;
