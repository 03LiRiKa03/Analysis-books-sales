import pandas as pd
import matplotlib.pyplot as plt
from db_connection import get_table_as_dataframe  


table_name = "your_table" 


data = get_table_as_dataframe(table_name)


if data is not None:
    
    ratings = data['book_average_rating']
    sales_rank = data['sales_rank']
    
   
    correlation = ratings.corr(sales_rank)
    print(f"Correlation between book ratings and sales rank: {correlation}")

 
    plt.figure(figsize=(10, 6))
    plt.scatter(ratings, sales_rank, color='purple', alpha=0.7)
    plt.title('Correlation between Book Ratings and Sales Rank')
    plt.xlabel('Average Book Rating')
    plt.ylabel('Sales Rank')
    plt.grid(True)
    plt.show()
else:
    print("Failed to retrieve data.")
