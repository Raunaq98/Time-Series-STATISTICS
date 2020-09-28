# Time-Series-STATISTICS

# Lag

A ***lag*** is a fixed amount of passing time; One set of observations in a time series is plotted (lagged) against a second, later set of data. 

      lag(n) = y(t)  -   y(t-n)
      
# Stationary and Non-Stationary Time Series

A ***stationary time series*** is one whose statistical properties such as the mean, variance and autocorrelation are all constant over time. Hence, a ***non-stationary series*** is one whose statistical properties change over time.

Non-stationary data should be first converted into stationary data (for example by trend removal), so that further statistical analysis can be done on the de-trended stationary data. This is so because for example, if the series is consistently increasing over time, the sample mean and variance will grow with the size of the sample, and they will always underestimate the mean and variance in future periods. The usual mean of “de-trending” a series is to fit a regression line and then subtract it from the original data.

# Seasonality and Trend

***Seasonality*** is a general systematic linear or (most often) nonlinear component that changes over time and does repeat.

***Trend*** a general systematic linear or (most often) nonlinear component that changes over time and does not repeat
