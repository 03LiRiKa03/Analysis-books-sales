SELECT 
    TRIM(REPLACE(genre, 'genre ', '')) AS cleaned_genre,
    ROUND(AVG(sale_price), 1) AS avg_sale_price
FROM `your_table`

GROUP BY cleaned_genre

ORDER BY avg_sale_price ASC;
