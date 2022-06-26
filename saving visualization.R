#load ggplot2
#it's already loaded so we move

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g, color = species))

# using ggsave
# ggsave is default for saving the last plot that was displayed and uses the size of the current graphics device
# using ggsave to save a plot as a png file

ggsave('Three penguins species.png')
