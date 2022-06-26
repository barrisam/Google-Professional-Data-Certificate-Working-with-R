# There is a bias function in R that compares the actual outcome of our data with the predicted outcome. 
# if your model is unbiased, the outcome should be pretty close to zero. A high result means data might be biased

install.packages('SimDesign')
library(SimDesign)

#lets try this with a weather report
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

bias(actual_temp, predicted_temp)

# another sceanario with a game store
actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)

bias(actual_sales, predicted_sales)
