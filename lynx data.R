# importing lynx dataset as "data"
data<- lynx

# MEAN AND MEDIAN

mean(data)
#[1] 1538.018
median(data)
# [1] 771
# large difference, we need to plot and see

# VISUALISATION
plot(data)
# high seasonality leading to seasonal peaks, making the mean high

# QUANTILES
quantile(data, 
         seq(0,1,length = 11),
         type = 5)                # type 5 = deciles of the data (10 partitions)

