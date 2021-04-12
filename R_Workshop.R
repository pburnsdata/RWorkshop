##################################
#
# R Workshop
# Preston Burns
# 4/13/2021
#
##################################
###  What is a programming language ? ###
#A language designed for humans to give instructions to machines

##################   Try out console  ###################

############# Now try same things from script: ##########

# Three main ways to run code:
#  1. Click the 'Run' button while on a line to run that line
#  2. Highlight lines of code using you cursor, then 
#  Click the 'Run' button while on a line to run that line
#  3. Do 1. or 2. but hit "Ctrl" and "Enter" together to run line(s)

# Math Operations:

3 + 4

(3 + 4) *2

# Logical Operations:

2 > 1 #Greater than

2 >= 2 #Greater than or equal to
2 >= 1 #Greater than or equal to

3 == 2+1 #Equal to

3 != 2 #Not Equal to

9 < 3 #Less than

2 <= 2 #Less than or equal to
2 <= 3 #Less than or equal to

(2 & 6) > 3 #AND

(2 | 6) >3 #OR

## Exercise #####################################

# Multiply 3 by 6 then add 2


# Is 15693 divided by 534 greater than 30?


# Add a comment below that says 3 + 4 and verify that R doesn't 
# try to interpret/calculate it


#################################################

##################  Data Types ###################

#character
"I am a text string"
typeof("I am a text string")

#double (numeric) - also integer if specified
3.4
typeof(2)

#logical (only two options)
TRUE
FALSE
typeof(TRUE)


##################  Variables  ###################
# Variables are containers for storing data for repeated use

x <- 4 # Assigning the value 4 to a variable "x"

x # Print x

x + 1 # Math operation on x

x <- x *2 # Update the value stored in x 

x # Print new value of x

## Exercise #####################################
# Assign 6.5 to a variable named example_number 
# and print that number

# Assign your name as a character data type 
# to a variable called name and print it

name <- 

#################################################

# Objects in the environment can be removed using rm(object)

rm(name)

## Exercise #####################################
# Run the following code:
mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20

# Is mass larger than age?


# Remove mass and age from the environment:



#################################################



#################################################

##################  Vectors  ###################
# Vectors are a sequence of values that are the same data type

y <- c(9,3,4)

y

y >4

y + 1

##################  Lists  ###################
# Lists can contain values that are not of the same data type
z<- list(2,3,"car")

z

z <- list(2,3,4)

z * 2 

# Errors in R occur when R refuses to run your command because it's
# impossible

0 +/ 2

# Warnings in R occur when R still runs your code but something 
# unexpected or unusual happened and it wants you to know

cor( c( 1 , 1 ), c( 2 , 3 ) )


##################  Data Frames  ###################

# create adverse events "data frame" 
# A data frame is a table with one cell per row/column
adverse_events <- data.frame(ID = c("001-001", "001-002", "001-002", "001-003", "001-004","001-005"),
                   Sex = c("F", "M", "M", "F", "M","F"),
                   AECODE = c("Corneal Infection", "Myalgia", "Edema Trunk", "Hyperparathyroidism", "Chills","Chills"),
                   AESTARTDY = c(172,180,57,43,29,54),
                   AEENDDY = c(300, 339, 86, 52, 60,80))

# Click on data frame in "Environment Pane"

# Variables can be selected as vectors by using $
adverse_events$AESTARTDY
 
# New variables can be edited or added to a dataframe by assigning new values 
# to them using the $ operator
adverse_events$NEW_VARIABLE <- c(1,2,3,4,5,6)
typeof(adverse_events$NEW_VARIABLE)


## Exercise #####################################

# It turns out an error was made in data collection and we need to add 5 
# to the AEENDDY for all of the adverse events in the adverse_events 
# data frame. Add 5 to the AEENDDY variable and assign the updated values
# to the original data frame under the same variable name to overwrite
# the old values:




#################################################

##################  Functions  ###################

# Functions are sets of statements collected together to complete a task.
# You'll recognize them by their open and close parenthesis, where inputs 
# are expected.
# They have set inputs that are either required or optional and
# return outputs when used

# Let's look at the c() function we used earlier to create vectors
?c
  
# What about the sum() function?
?sum

#What's sum of AESARTDY variable?
sum(adverse_events$AESTARTDY)

## Exercise #####################################
# What's the mean of the AEENDDY variable?' 
# the function is named mean() -> use ? to learn about its arguments



#################################################

##################  Packages  ###################

# install dplyr package
install.packages('dplyr')

library(dplyr)

# Use filter to subset adverse_events data frame 
# to just male participants
filter(adverse_events, Sex =="M")

## Exercise #####################################
# Create a variable called female IDs that contains the IDs 
# for all the females in the adverse_events data frame in a vector




#################################################

# Sort dataframe by AESTARTDY
adverse_events_sorted <- arrange(adverse_events, AESTARTDY)

# drop Sex from dataframe
adverse_events_clean <- select(adverse_events, - "Sex")
# alternatively
adverse_events_clean <- select(adverse_events, c("ID","AECODE","AESTARTDY","AEENDDY"))

write.csv(adverse_events_sorted, "./sorted_aes.csv")

## Exercise #####################################
# Sort the adverse_events data frame by Sex, remove the NEW_VARIABLE column,
# and save the new data frame to a variable called ae_exercise. Write this 
# data frame to a csv with the filename csv_ae_exercise




#################################################


# How does this differ from excel? 
#    Programming vs point and click
#    R can read any type of data
#    More powerful and efficient importing and manipulation of data
#    Automation!
#    Reproducibility!
#    Easier to find errors
#    Advanced analytical abilities

