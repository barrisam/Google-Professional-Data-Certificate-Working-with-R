install.packages("here")
library('here')

install.packages("skimr")
library('skimr')

install.packages("janitor")
library('janitor')

library('dbplyr')

# we will be using palmer penguins dataset. we need to install and load it
install.packages('palmerpenguins')
library('palmerpenguins')

# trying the cleaning functions
# to get summarises of the dataframe we could use 
# * skim_without_chart()
# * glimpse()
# * head()
# * select()

skim_without_charts('penguins')
glimpse(penguins)
head(penguins)

# to view only the species column
penguins %>%
  select(species)

#to view every other column except the species column
penguins %>%
  select(-species)

# to rename a column
penguins %>%
  rename(island_new = island) # new name comes first

# for consistency, use rename_with()

# to change all column names to uppercase
rename_with(penguins, toupper)

# clean_names() ensures there is only characters, numbers or underscores in the names
clean_names(penguins)


