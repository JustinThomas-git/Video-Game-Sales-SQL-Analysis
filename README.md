# 1.Video Game Sales SQL Project
# 2. Objective 
  a. Identify whether PS4 video game critic scores rankings align with the sales and which genre's dominate the market.

b. To solve this, I webscraped critic scores from vgchartz.com along with sales data and added the data to a AWS RD. I used SQL to run queries against the data to discover insights.

# 3. Job Description 
  a. 
  The designated job is a Data Analyst part of the Sales, Planning and Analytics team. The job position is at Take-Two Interactive Software, 
  a video game holding company which owns major video game publishers and developers. 
  The job requires the analyst to translate and visualize data to discover 
  insights and recognize trends. This position focuses on using sales data and identifying sales trends.
 
 
 b. A data anaylyst at Take-Two works with both internal and external data to communicate insights and recommendations to increase sales.
  
 # 4. Data
 
 a. Sourced data from a kaggle data set (https://www.kaggle.com/sidtwr/videogames-sales-dataset) to get the sales, and webscraped data from Vgchartz.com for critic scores.
 
 b. The data is PS4 video games retail sales from 2013-2018. Not all games had a critic score 
 
 # 5. Notebooks
  sql_analysis.ipynb - Explaratory analysis and answering questions with SQL queries.
  
  
  data_collection.ipynb - Used to webscrape data from Vgchartz.com
 
 
 trigger.sql - Created a trigger to restrict the insert's into the GameScore table to scores above 5.
  
  
  stored_procedure.sql - A stored procedure that returns the number of games for each year.
  
  # 6. Future Improvements
  If I had more time, I would want to find out when is the best time to release a game to give more recommandations for sales and promotional purposes.
  
