SELECT 
    publisher,
    TRIM(REPLACE(genre, 'genre', '')) AS cleaned_genre,
    ROUND(SUM(publisher_revenue)) AS total_publisher_revenue
FROM 
    'your_table'
GROUP BY 
    publisher,
    cleaned_genre
ORDER BY 
    publisher,
    cleaned_genre;
