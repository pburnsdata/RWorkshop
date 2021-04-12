##################################
#
# R Workshop - ggplot
# Preston Burns
# 4/13/2021
#

# Before we start using ggplot, let's install and load it
# then prepare a new data frame for us to experiment with

# Install the ggplot2 package
install.packages("ggplot2")

# Load the ggplot2 and dplyr packages
library(ggplot2)
library(dplyr)

# Load mpg dataset with gas mileage and specifications for various cars
data(mpg)

### Helpful functions for learning about new data frames ###

length(mpg) #Check how many columns mpg data frame has

colnames(mpg) #Print the names of the columns

nrow(mpg) #Check how many rows mpg data frame has

############################################################

## Exercise #####################################
# Filter the mpg dataset to include only rows  
# where the manufacturer is toyota and save results to variable toyota_mpg


# Using toyota_mpg, select the variables: model, year, cty, hwy, class
# and save results to toyota_mpg_subset


# How many rows and columns does this new data frame have?


# Click on your newly created toyota_mpg_subset in the "Environment" pane
# to familiarize yourself with the data

#################################################

#################  Introduction to ggplot ####################
# ggplot is a system for creating graphics via declarations. It is based on 
# The Grammar of Graphics (https://www.amazon.com/Grammar-Graphics-Statistics-Computing/dp/0387245448/ref=as_li_ss_tl?ie=UTF8&qid=1477928463&sr=8-1&keywords=the+grammar+of+graphics&linkCode=sl1&tag=ggplot2-20&linkId=f0130e557161b83fbe97ba0e9175c431)

cookies <- data.frame(Cookie_Type = c("Chocolate","Raisin","Sugar"),
                      Count = c(15,17,4))

ggplot(cookies, aes(x=Cookie_Type, y = Count)) +
  geom_col()

# Create Scatter plot of Highway Gas Mileage by City Gas Mileage
# data + mapping aesthetics
ggplot(toyota_mpg_subset, aes(x=hwy, y=cty)) +
  # Geometric object
  geom_point()

# Create Scatter plot of Highway Gas Mileage by City Gas Mileage Colored by Class
# data + mapping aesthetics
ggplot(toyota_mpg_subset, aes(x=hwy, y=cty, color = class)) +
  # Geometric object
  geom_point()

# The color scale for class is assigned automatically, but it can
# also be assigned manually:
# data + mapping aesthetics  
ggplot(toyota_mpg_subset, aes(x=hwy, y=cty, color = class)) +
  # Geometric object
  geom_point() +
  # Assign Color Scale manually
  scale_colour_manual(values = c("red", "blue", "green","brown")) 

# Add Facet by Class instead of color
# data + mapping aesthetics
ggplot(toyota_mpg_subset, aes(x=hwy, y=cty)) +
  # Geometric object
  geom_point() +
  # Facet by class
  facet_wrap(~class)

# Add color on top of facet
# data + mapping aesthetics
ggplot(toyota_mpg_subset, aes(x=hwy, y=cty, color=model)) +
  # Geometric object
  geom_point() +
  # Facet by class
  facet_wrap(~class)

## Let's try another geometric object - bar
# Bar Chart of class counts
ggplot(toyota_mpg_subset, aes(x=class)) +
  # Geometric object
  geom_bar()

## Exercise #####################################
# Create a bar chart of model count and facet it by year





#################################################

#################  Saving ggplot Output ####################

ggsave("./model_count.pdf",  width = 20, height = 20, unit="cm")
ggsave("./model_count.png",  width = 20, height = 20, unit="cm")

## Exercise #####################################
# Create a scatter plot of hwy by cty colored by class and facet it by 
# manufacturer using the original "mpg" dataset 




# Save this chart to a .png file named Gas_Mileage_By_Manufacturer
# using same options for height width and unit as above



#################################################


#################  Bonus: Reading in Data ####################

# Reading in csv from earlier
aes_from_csv <- read.csv('./sorted_aes.csv')

# Reading in excel file
install.packages("readxl")
library(readxl)

excel_test_file <- read_excel("./original_ae.xlsx")

# Depending on REDCap or Cranium set up, could even pull data 
# directly from source via api or db connection

