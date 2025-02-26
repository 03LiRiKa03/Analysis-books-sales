SELECT
    author,
    SUM(units_sold) AS total_units_sold

FROM 'your_file'

GROUP BY author

ORDER BY total_units_sold DESC
LIMIT 5;
