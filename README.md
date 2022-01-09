# MechaCar_Statistical_Analysis
## Project Overview
The goal of the project is to analyze metrics that can affect the manufacturing a new car prototype and compare vehicle performance across different manufacturer lots. We are to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG
![](https://github.com/echoqshen/MechaCar_Statistical_Analysis/blob/main/output%20from%20the%20linear%20regression.png)
* Variance of a non-random variable is usually 0. From the dataset, the intercept, vehicle_length, and ground_clearance coeeficients provided a non-random amount of variance to the mpg values.
* The null hypothesis of a linear regression states that the slope (β1) is equal to 0. If the p-value is less than the significance level of 0.05, we are able to reject the null hypothesis. from the summary we can see the p-value of 5.35e-11 is extrememly below the significance level, which means that the relationship between our variables and the miles per gallon is subject to more than random chance.
* Multiple R-squared increases as more variables are passed through the regression. The r-squared value of 0.7149 indicates that the model is 71% accurate. An adjusted R-square of 0.6825 still concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.

