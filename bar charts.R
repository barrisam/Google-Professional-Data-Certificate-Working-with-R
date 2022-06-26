# we will use diamonds dataset to demostrate bar charts
# the dataset comes with ggplot2 so it already loaded

ggplot(data=diamonds) + 
  geom_bar(mapping = aes(x = cut))

# adding colors
ggplot(data=diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut)) # this adds colors to the borders of the bar

# to add color to the inside of the bar use fill
ggplot(data=diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

# using clarity
ggplot(data=diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

# FACETS
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  facet_wrap(~species)

# using facet with diamonds dataset
ggplot(data=diamonds) + 
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  facet_grid(sex~species)

# Working with labels and annotations
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length") # title is automatically added to the top of the plot

# adding subtitles
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species")

# adding captions
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman")

#captions, titles and subtitles put text outside the plot. To put text inside the grid to call out specific data points, we use annotate function
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest") # x and y are the cordinates of where we want the text to appear

# adding colors to annotation
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest", color = 'blue') # x and y are the cordinates of where we want the text to appear

# to change font and add fontsize and change the angle
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest", color = 'blue', fontface = 'bold', size = 4.5,angle = 25) 

# save the basic plot as a variable and add the annotations to it. 
new_plot <- ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman")

new_plot + annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest")
