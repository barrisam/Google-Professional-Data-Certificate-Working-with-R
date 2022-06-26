# installing packages
install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)
# there are four sets of x and y
# we will get the means, summary and correlation of each set

quartet %>% 
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

# simple visualization or graph to check if the datasets are identical
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method= 1, se = FALSE) + facet_wrap(~set) # is not working for some reason

#datasaurus package. it creates plot with the anscombe data in different shapes
install.packages('datasauRus')
library('datasauRus')
ggplot(datasaurus_dozen, aes(x=x, y=y, colour = dataset)) + geom_point() + theme_void() + theme(legend.position = 'none') + facet_wrap(~dataset, ncol = 3)
