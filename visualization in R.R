install.packages('ggplot2')
library(ggplot2)

data(penguins)
View(penguins)

# visualization with ggplot2 to show the relationship between body_mass_g and flipper_length_mm
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# using colors to highlight the different species
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) # the colors has legend attached to the output to specify which color belongs to which species

# using shape to highlight the different penguin species
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species)) # the shapes are square, circle and triangle. 

# We could also add both color and shape at once
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species))

#adding size
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, size = species))

# adding alpha for transparency
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

# to set all colors to be purple without regard to specific variables
# the color has to be set outside the aes function
ggplot(data=penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = 'purple')


# WORKING WITH DIFFERENT GEOM FUNCTIONS
ggplot(data=penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#We could use two geoms in a plot eg, using geom_point and geom_smooth
ggplot(data=penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# to plot a separate line for each specie of penguin
ggplot(data=penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

# geom_jitter() creates a scatterplot with a small amt of random noise
ggplot(data=penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

