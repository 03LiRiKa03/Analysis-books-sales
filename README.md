 ## 1. Which publishers have released the most books?
* Amazon Digital: A publisher that has significantly impacted the market by releasing many books.
### Description
[The top_publisher.sql](top_publisher.sql) file contains an SQL query designed to analyze the number of books released by each publisher in the dataset. The query counts the total number of book titles associated with each publisher and orders the results in descending order based on the count.

 ## 2. In which years were the most books published?
 * The most books were published in 2012 (68 books), followed by 2011 (55) and 2009 (46) years.
### Description
[The most_books_published_years.sql file](most_books_published_years.sql) contains an SQL query designed to determine the years with the highest number of books published in the dataset. The query counts the total number of book titles published in each year, groups the results by the publishing year, and orders the output in descending order based on the count of published books.

 ## 3. Which books received the highest rating (top 10)?
* "Words of Radiance": 4.77 (73,572 ratings)
* "A Court of Mist and Fury": 4.72 (108,384 ratings)
* "Essential Calvin & Hobbes": 4.65 (93,001 ratings)
* "The Way of Kings": 4.64 (144,822 ratings)
* "Calvin and Hobbes": 4.61 (117,788 ratings)
### Description
[The books_rating.sql](books_rating.sql) retrieves the top 10 highest-rated books, using book_average_rating as the primary criterion. If multiple books have the same rating, they are sorted by book_ratings_count to prioritize those with more reviews. This ensures that the selection includes not only the highest-rated but also the most reliably rated books.

 ## 4. What is the average book price by genre?
* Fiction:	4.7
* Nonfiction:	5.5
* Children:	6.1
### Description
[The avg_price_genre.sql file](avg_price_genre.sql) calculates the average book prices by genre, using cleaned_genre for grouping. The data includes both "genre fiction" and "fiction," so I applied a cleaning function to combine them. The average price is taken from the sale_price column, which helps understand pricing trends across genres.

 ## 5. Which genres have the highest number of books sold?
* Fiction:	8421492
* Nonfiction:	1634759
* Children:	298118
### Description
[The top_units_sold_genre.sql](top_units_sold_genre.sql) file calculates the total number of books sold by genre, using cleaned_genre for grouping. The data includes variations such as "genre fiction" and "fiction," so I applied a cleaning function to unify them. The total sales are calculated using the SUM function on the units_sold column, which provides insights into the popularity of different genres. The results are ordered in ascending order of total units sold.

 ## 6. Top 5 authors by number of books sold.
* Stephen King:	278322
* Janet Evanovich:	181089
* Lemony Snicket, Brett Helquist:	158973
* Jim Butcher:	145827
* Robert Jordan:	133512
### Description
[The top_authors_units_sold.sql file](top_authors_units_sold.sql) retrieves the top 5 authors by the total number of books sold, using SUM(units_sold) as the primary criterion. This query groups the results by author, allowing for the aggregation of sales across multiple books. The authors are then sorted in descending order based on total units sold, ensuring that the selection highlights those authors with the highest sales figures. This approach provides insight into the most successful authors in terms of book sales.

 ## 7. What is the total publisher revenue by genre?
* Penguin Group: has the highest sales in fiction.
* Amazon Digital: demonstrates significant volumes in both fiction and nonfiction.
* Hachette Book: holds strong positions in both genres.
* HarperCollins Publishers also has high sales in fiction, while HarperCollins Christian focuses on nonfiction.
* Macmillan and Random House show stable sales across all genres.

### Description
[The publisher_genre_revenue.sql file](publisher_genre_revenue.sql) retrieves the total revenue of publishers across different genres. The genre column contains values like "genre fiction" and "fiction," which are identical. To address this issue, the code removes the "genre" part. The revenue is rounded for improved readability. The results are grouped by publisher and cleaned_genre, and then sorted by publisher and cleaned_genre. 

 ## 8. Comparison of average book prices between different publishers.
* Amazon Digital: 3.2
* HarperCollins Christian Publishing: 5.2
* Macmillan: 5.4
* HarperCollins Publishing: 5.7
* Simon and Schuster: 5.9
* HarperCollins Publishers: 6.3
* Hachette Book: 6.4
* Random House: 7.3
* Penguin Group: 8.6
### Description
[The avg_price_publisher.sql file](avg_price_publisher.sql) contains a SQL query that calculates the average sales price of books for each publisher, rounds the result to two decimal places, and sorts the results in ascending order by average price.
 ## 9. How is the book rating correlated with its sales position?
* Correlation between book ratings and sales rank: -0.02021720566106124
### Description
[The corr.py file](corr.py) imports the necessary libraries for analysis and establishes a connection to the database via `db_connection`. It includes a condition to check whether the data retrieval was successful. The script then calculates the correlation and visualizes the results.


  






