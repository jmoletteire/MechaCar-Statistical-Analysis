# Load dplyr package
library(dplyr)

# Read MechaCar_mpg.csv as a dataframe
mecha_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, mecha_mpg)

# Retrieve summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, mecha_mpg))
