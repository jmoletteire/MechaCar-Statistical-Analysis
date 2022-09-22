##### Deliverable 1 #####
# Load dplyr package
library(dplyr)

# Read MechaCar_mpg.csv as a dataframe
mecha_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, mecha_mpg)

# Retrieve summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, mecha_mpg))


##### Deliverable 2 #####
# Read Suspension_Coil.csv
sus_coil <- read.csv('Suspension_Coil.csv')

# Create total summary
total_summary <- summarize(sus_coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Create Lot summary
lot_summary <- summarize(group_by(sus_coil, Manufacturing_Lot), Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


##### Deliverable 3 #####
# PSI across all manufacturing lots vs. pop. mean of 1500 lbs/sq.inch
t.test(x=sus_coil$PSI, mu=1500)

# Lot 1 vs. pop. mean
t.test(x=subset(sus_coil, Manufacturing_Lot=="Lot1", select=c(PSI)), mu=1500)

# Lot 2 vs. pop. mean
t.test(x=subset(sus_coil, Manufacturing_Lot=="Lot2", select=c(PSI)), mu=1500)

# Lot 3 vs. pop. mean
t.test(x=subset(sus_coil, Manufacturing_Lot=="Lot3", select=c(PSI)), mu=1500)
