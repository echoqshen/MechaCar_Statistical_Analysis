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


# Deliverable 3
# t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(sus_df$PSI, mu=1500)
# three more t tests
lot1<-subset(sus_df,Manufacturing_Lot=='Lot1')
lot2<-subset(sus_df,Manufacturing_Lot=='Lot2')
lot3<-subset(sus_df,Manufacturing_Lot=='Lot3')

t.test(lot1$PSI, mu=1500)
# t = 0, df = 49, p-value = 1

t.test(lot2$PSI, mu=1500)
# t = 0.51745, df = 49, p-value = 0.6072

t.test(lot3$PSI, mu=1500)
# t = -2.0916, df = 49, p-value = 0.04168
