SELECT 
    TRIM(REPLACE(genre, 'genre', '')) AS cleaned_genre,
    SUM(units_sold) AS total_units_sold

FROM 'your_table'

GROUP BY cleaned_genre

ORDER BY total_units_sold ASC;
