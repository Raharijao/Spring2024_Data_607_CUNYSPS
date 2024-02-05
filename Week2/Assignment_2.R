library(RMySQL)

#Connect to Schema
mydb <- dbConnect(
  MySQL(),user='andrianinadavid.raharijao92',
  password='andrianinadavid.raharijao92',
  dbname = 'andrianinadavid.raharijao92',
  host = 'cunydata607sql.mysql.database.azure.com')

#List my tables
dbListTables(mydb)

#SQL query to get my table
query <- "SELECT * FROM movie_ratings"

# Use result from query to make a dataframe
movie_ratings_df <- dbGetQuery(mydb, query)

#Part 4:
#For missing data, I would first try to find out if the data is missing due to an error on my part
#or due to an error in pulling the data. Then I would try to replace the missing value with the average 
#if it is a numerical value, and with an "other" if it is a text value. If the previous steps are not possible
#then I would delete the rows that contain the missing values. I take this approach in order to keep as many rows as 
#possible in the data set.



