# we create our dataframe from scratch

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

# give the variables to a dataframe
employee <- data.frame(id, name, job_title)
print(employee)


#first and last names are combined into a single column. We break them up using seperate()
separate(employee, name, into= c('firstname', 'lastname'), sep= ' ')

# unite() is the function that allows us merge columns together. 
id <- c(1:10)

firstname <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
lastname <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
jobs <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employees <- data.frame(id, firstname, lastname, jobs)
print(employees)

unite(employees, 'name', firstname, lastname, sep = ' ')

# adding columns with calculations with mutate. we will be adding another body_mass that measures in kg. will name it body_mass_kg
# we will use the penguin data set

View(penguins)

penguins %>%
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)



