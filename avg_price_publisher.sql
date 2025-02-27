SELECT 
    publisher,
    ROUND(AVG(sale_price), 2) AS avg_sales_price
  
FROM 'your_table'

GROUP BY publisher

ORDER BY avg_sales_price ASC;
