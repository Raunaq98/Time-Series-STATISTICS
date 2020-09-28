## TESTING STATIONARITY
library(tseries)

x <- rnorm(1000)  # stationary as mean = 1 and variance = 1
adf.test(x)
#            Augmented Dickey-Fuller Test
#data:  x
#Dickey-Fuller = -10.11, Lag order = 9, p-value = 0.01
#alternative hypothesis: stationary
# low p confirms alternative hypothesis
# verdict = p < 0.05 = stationary


y <- diffinv(x)
adf.test(y)
# p >0/05 = non-stationary

