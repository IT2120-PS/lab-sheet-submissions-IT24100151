getwd()
setwd("C:\\Users\\senur\\OneDrive\\Desktop\\IT24100151")
getwd()

#  1. Calculate the population mean and population standard deviation of the laptop bag weights.
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)
##Q1-population mean
popmn<-mean(Weight.kg.)
popmn
popvar<-var(Weight.kg.)
popvar
##Population standard deviation
pop_sd <- sd(Weight.kg.)
pop_sd

# 2. Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample.
##Q2
samples<-c()
n<-c
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s,i'))
}

s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

#  3.Calculate the mean and standard deviation of the 25 sample means and state the relationship of them with true mean and true standard deviation.
#Q3
samplemean<-mean(s.means)
samplemean
sample_sd<-sd(s.sd)
sample_sd
#relationship
##The mean of the sample mean is close to the population mean(Law of large numbers)
##The standard deviation of the sample means(standard error)is smaller than thepopulation standard deviation
##It approximates population_sd/sqrt(sample size)

