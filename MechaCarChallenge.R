# Deliverable 1
library(dplyr)
# Import and read
mechacar_df<-read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F )
head(mechacar_df)
# Perform linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mechacar_df)
# Using the summary function to determine the p-value and the r-squared value
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mechacar_df))  

# p-value: 5.35e-11
# Multiple R-squared:  0.7149, Adjusted R-squared:  0.6825


# Deliverable 2:
# import and read
sus_df<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# summaries the suspension coil's PSI column
total_summary<-sus_df |> summarise(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI))
# use group by and summaries the suspension coil's PSI column
lot_summary<-sus_df |> 
  group_by(Manufacturing_Lot) |> summarise(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI))
