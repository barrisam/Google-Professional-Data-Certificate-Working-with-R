install.packages('tidyverse')
library(ggplot2)
data("diamonds")
View(diamonds)

# using head function to see limited columns/ a quick preview
head(diamonds)

# to get a structure of the database using str() and colnames() or glimpse()
str(diamonds)
colnames(diamonds) #colnames is also to get column names

#use mutate() to make changes to the dataframe. To do this we have to load
# tidyverse because mutate() is in dplyr package.
library(tidyverse)
mutate(diamonds, carat_2= carat*100) 
#mutate here adds a new column called carat_2. it is populated by multiplying
# the original carat by 100. 
