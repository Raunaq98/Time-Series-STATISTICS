############## DURBIN WATSON TEST

library(lmtest)

# to use dw test, we need to get lag1 ie chop first and last time spot
dwtest(lynx[-114] ~ lynx[-1])
# 	Durbin-Watson test
# data:  lynx[-114] ~ lynx[-1]
# DW = 1.1296, p-value = 1.148e-06
# alternative hypothesis: true autocorrelation is greater than 0
# low p values confirms alternative hypothesis



############## ACF AND PACF

acf(lynx,
    lag.max = 20) # for 20 lags
# many bars are above the 95% confidence interval = high level of correlation

pacf(lynx,
     lag.max = 20)


# observing both together
library(forecast)
tsdisplay(lynx)
