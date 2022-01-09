library(dplyr)
# Import and read
mechacar_df<-read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F )
head(mechacar_df)
# Perform linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mechacar_df)

# Using the summary function to determine the p-value and the r-squared value
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mechacar_df))  

# p-value: 5.35e-11
# Adjusted R-squared:  0.6825