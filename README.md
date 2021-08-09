# AutosRUs: Analysis of Production Data
## Module 15:  Statistics and R
---
### Overview of Project 

In this module we practiced using RStudio to perform statistical analyses.  Upon completion of our practice, we were given a dataset which contains the mpg test results for 50 prototype MechaCars to determine what is blocking the progress of the manufacturing team.

---
## Linear Regression to Predict MPG
After determining multiple regressions it can be determined that the vehicle length and the ground clearance appear to provide a non-random amount of variance to the mpg values as their slopes are not 0 and the absolute value of the t test is quite small.  According to this analysis, vehicle weight, spoiler angle, and AWD appear to have a slope very close to zero and provide a random amount of variance to the mpg values.  Based on the R-squared value we can see that the variables in this model predict ~71% of the variance in the mpg values. 

![image of linear regression output and interpretation](https://github.com/murphyk2021/MechaCar_Statistical_Analysis/blob/bf2414a40a5f803674d0de06ee744d91cec386aa/images/LinearRegression%20to%20Predict%20MPG.JPG)

These conclusions are further supported by running a correlation matrix which returns high values for vehicle length and ground clearance and low values for the other variables.

![iage of correlation matrix output](https://github.com/murphyk2021/MechaCar_Statistical_Analysis/blob/5bf733d59cb04038e1011c0118e7026e7acc7304/images/correlation_matrix.png)

Additionally, if we create individual plots of the individual variables we can clearly see that vehicle length does, in fact, appear to be correlated with MPG while AWD does not. 

![image of scatter plots with lnear regression](https://github.com/murphyk2021/MechaCar_Statistical_Analysis/blob/5bf733d59cb04038e1011c0118e7026e7acc7304/images/Independent_LinearRegression.JPG)
---
## Summary Statistics on Suspension Coils
After reviewing the data for the production os suspension coils it appears we may need to further investigate production at Lot 3 as the variance on the suspension coils produced at this location exceeds the lmit of 100 pounds per square inch.

![image of summary data](https://github.com/murphyk2021/MechaCar_Statistical_Analysis/blob/874544044324f762c83f5e33bf3f9f590e8061fd/images/PSI_limits_Sus_Coils.JPG)
---
## T-Tests on Suspension Coils
Further analysis of the suspension coil data supports the above conclusion that the manufcaturing process at Lot 3 needs to be reviewed.  This is evident by the t-test results that show that there is a statistically significant difference between the coils produced at Lot 3 compared to the population mean of 1500PSI.  

![t-test results](https://github.com/murphyk2021/MechaCar_Statistical_Analysis/blob/1b3c675c6a173485df11787686b043b5e83a2e0d/images/ttest_Sus_Coils.JPG)
