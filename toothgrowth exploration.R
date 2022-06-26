# toothset data explores the effect of vitamin c on the growth of teeth in guinea pigs

data("ToothGrowth")
View(ToothGrowth)

#install dplyr
# load it

#to filter the data to see rows where the dose is 0.5
filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)

#sort using the arrange function
arrange(filtered_tg, len)

#using a nested function to filter and sort 
arrange(filter(ToothGrowth, dose ==0.5), len)

#using pipe to filter

filtered_toothgrowht <- ToothGrowth %>%
  filter(dose ==0.5) %>%
  arrange(len)
