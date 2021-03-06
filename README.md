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

# Stationarity

If the data lacks stationarity, transformations are need to be done to make it stationary.


# Autocorrelation

Just as correlation measures the extent of a linear relationship between two variables, autocorrelation measures the linear relationship between lagged values of a time series. It tells us whether the  **previous observations influence the recent ones.**

For example, in the Lynx data, if you catch more lynx in one year, you will catch less in the next year due to lower population.

            acf() = Observes correlation values between current time spot and 
                     previous time spots.
                     
                     Example : independent correlation between todays's stock price and yesterday's 
                                and then today's and day before yesterday's
                             
                     Used for the Moving Average ( MA ) part of the analysis.        
                     
            pacf() = Observes the correlation values between two time spots given that
                      both observations are correlated to to observations at other
                      time spots.
                      
                      Example : today's stock price is correlated to yeterday's and yesterday's
                                 is correlated to the day before yesterday's. PACF of today and yesterday 
                                 is the real correlation between today and yesterday after taking out 
                                 the influence of day before yesterday's.
                                 
                      Used for the Auto Regressive ( AR ) part of the analysis.           

            Durbin-Watson Test 

# Moving Average (MA) and Auto Regressive (AR)

Pure AR Models - Depends on the lagged values of the data you are modeling to make forecasts. The moving-average model specifies that the output variable depends linearly on the current and various past values of a stochastic (imperfectly predictable) term.

Pure MA Models - Depends on the errors(residuals) of the previous forecasts you made to make current forecasts. The autoregressive model specifies that the output variable depends linearly on its own previous values and on a stochastic term (an imperfectly predictable term); thus the model is in the form of a stochastic difference equation 
