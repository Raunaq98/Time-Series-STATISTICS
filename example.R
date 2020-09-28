########################## CREATING DATA
set.seed(54)
myts <- ts(c(rnorm(50,34,10),
             rnorm(67,7,1),
             runif(23,3,14)))

########################## EDA
plot(myts)
# neither constant mean nor constant variance

########################## SIMPLE MODELS
library(forecast)
mean_mod <- meanf(myts,
                  h=10)
naive_mod <- naive(myts,
                   h=10)
drift_mod <- rwf(myts,
                 h=10,
                 drift = TRUE)

######################## MODEL PLOTS
plot(mean_mod)
lines(naive_mod$mean,col=123,lwd=2)
lines(drift_mod$mean,col=22,lwd=2)
legend("bottomleft",
       col=c(4,123,22),
       legend=c("mean","naive","drift"),
       lty=1)

####################### ACCURACIES
myts_train <- window(myts,
                     start=1,
                     end=112)
myts_test <- window(myts,
                    start=113)

mean_mod2 <- meanf(myts_train,
                  h=28)
naive_mod2 <- naive(myts_train,
                   h=28)
drift_mod2 <- rwf(myts_train,
                 h=28,
                 drift = TRUE)

accuracy(mean_mod2,myts_test)
accuracy(naive_mod2,myts_test)
accuracy(drift_mod2,myts_test)
# naive has the lowest RMSE, MAE, MAPE, MASE

####################### AUTOCORRELATION
acf(naive_mod$residuals[2:140])
# 4 spikes are crossing when wwe can allow only 1
# we can try taking log
myts2<- log(myts)
naive_log <- naive(myts2,
                   h=10)
acf(naive_log$residuals[2:140])
# only 1 spike crossing = better model