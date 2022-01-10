# MechaCar_Statistical_Analysis
## Project Overview
The goal of the project is to analyze metrics that can affect the manufacturing a new car prototype and compare vehicle performance across different manufacturer lots. We are to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/output%20from%20the%20linear%20regression.png)
* Variance of a non-random variable is usually 0. From the dataset, the intercept, vehicle_length, and ground_clearance coeeficients provided a non-random amount of variance to the mpg values.
* The null hypothesis of a linear regression states that the slope (β1) is equal to 0. If the p-value is less than the significance level of 0.05, we are able to reject the null hypothesis. from the summary we can see the p-value of 5.35e-11 is extrememly below the significance level, which means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Multiple R-squared increases as more variables are passed through the regression. The r-squared value of 0.7149 indicates that the model is 71% accurate. An adjusted R-square of 0.6825 still concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.

## Summary Statistics on Suspension Coils
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/Summary%20Statistics%20on%20Suspension%20Coils.png)
* The overall variance for the entire dataset indicates the manufacturing data meets the 100 pounds per square inch variance limitation. But when broken down into three lots, the third lot demonstrates a much higher variance. Because the samples are randomly chosen, there is a possiblity that a third of the lot does not meet the necessary suspension coils requirement.

## T-Tests on Suspension Coils
### T-test on entire dataset
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/d3ttest.png)
* The null hypothesis states that the sample mean may be equivalent to the true population mean. At a p-value of 0.06 which is greater than  significance level of 0.05, we fail to reject the null hypothesis. ALso a narrower confidence interval implies that there is a smaller chance of obtaining an observation within that interval, it indeed provides greater accuracy than a wider interval.

### Lot 1
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/lot1.png)
* At a significance level of 0.05, we fail to reject the null hypothesis with a p-value equals to 1. As the p-values get larger, the confidence interval becomes smaller, implying more precision in predicting the true population mean.

### Lot 2
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/lot2.png)
* At a significance level of 0.05, we fail to reject the null hypthesis again since the p-value equals 0.6072.

### Lot 3
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/lot3.png)
* At a significance level of 0.05, we can reject the null hypothesis since the p-value equals 0.04168. This sample's mean is much smaller than the other two lots. 

## Study Design: MechaCar vs Competition
what other metrics would be of interest to a consumer when they compare a car to purchase from MechaCar or the competitors? 
* Cost is certainly a big factor, as well as city or highway fuel efficiency, maintenance cost and horse power.
* We can use our tests to see if our MechaCar is much different from the competiton. We can make a null hypothesis stating that it is no statistical difference in those metrics between our cars and the competitor's. The alternative hypothesis would state that there is an difference. 
* ANOVA test would be best as it's used to test groups to see if the means from multiple samples are significantly similar or different. 
* A random sample of n would be collected from MechaCar and their competitors. The p-value would be set at 0.05. Data that results in a prediction of a p-value smaller than 0.05 would provide predictive evidence that the null hypothesis could be rejected and that alternative hypothesis is true.
