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
* At a significance level of 0.05, we can reject the null hypothesis since the p-value equals 0.04168. The mean of this sample is also significantly smaller in comparison to the previous two lots. More importantly, unlike the previous two lots, the confidence interval for the third lot does not include the predicted population mean.
