#Confidence Interval from a Normal Distribution (students T-Test)
mean<-1100
stdev<-30
n<-9
quantile<-0.975 #Quantile is only for upper/lower portion so 2.5% on either side
confidenceInterval<-mean+c(-1,1)*qt(quantile,df=n-1)*stdev/sqrt(n)
print(confidenceInterval)

#library(datasets)
#round(t.test(mtcars$mpg)$conf.int)