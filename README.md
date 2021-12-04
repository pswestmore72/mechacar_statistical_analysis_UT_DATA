# mechacar_statistical_analysis_UT_DATA

# Overview
AutosRUs' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. AutosRUs' upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

Contains the following:

- Perform multiple linear regression analysis to identify which variables in the data set predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - vehicle_length
  - ground_clearance
  - vehicle_weight
#### Is the slope of the linear model considered to be zero? Why or why not?
  - The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Multiple R-squared:  0.71
  - The lack of significant variables is evidence of over fitting within the current data set, and thus this model fails to generalize and predict future data correctly.

## Summary Statistics on Suspension Coils
#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - Yes, the total and all 3 lots perform as near identical subsets of the total and the total summary shows that the vehicles are meeting the PSI standards.
  
## T-Tests on Suspension Coils
 - **Lot 1** The p-value is above the assumed significance level. Therefore, we would state that there is not enough evidence to reject the null hypothesis and we can confirm our two samples are not statistically different.
 - **Lot 2** The p-value is above the assumed significance level. Therefore, we would state that there is not enough evidence to reject the null hypothesis and we can confirm our two samples are not statistically different.
 - **Lot 3** The p-value is above the assumed significance level. Therefore, we would state that there is not enough evidence to reject the null hypothesis and we can confirm our two samples are not statistically different.

![Multiple T Tests (png)](./images/deliverable3.png)
**T Tests**











