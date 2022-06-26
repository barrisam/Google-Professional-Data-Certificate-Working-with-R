# the dataset in use here is penguin palmer. it has already been loaded, with other packages
library(tidyverse)

# to arrange and sort our table by bill length in ascending order
penguins %>% arrange(bill_length_mm)

#arrange in descending order
penguins %>% arrange(-bill_length_mm)

#to save our new arrangement as the main dataframe
penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2) #run in console

# using group_by to get the mean of the three islands
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

# to get the maximum bill length using groupby
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

#group_by island and species and summarize to calculate both mean and max
# drop_na drops any missing values
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm)) 
           
#filter results using filter function
# without drop na
penguins %>% filter(species == 'Adelie')

#with drop_na
penguins %>% filter(species == 'Adelie') %>% drop_na()
