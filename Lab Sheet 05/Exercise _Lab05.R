getwd()
setwd("C:\\Users\\it24100151\\Desktop\\IT24100151")
getwd()

# 1. Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data frame called ”Delivery Times”.
Delivery_Times <- read.table("Exercise - Lab 05.txt" , header = TRUE , sep = " " )
head(Delivery_Times) # viwe dataset quckliy  
fix(Delivery_Times) # view the file in sep window


# 2. Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals.
histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  main = "Histogram for Delivery_Times" ,
                  breaks = seq(20, 70, length(10) ) ,
                  right = FALSE)

# 3. Comment on the shape of the distribution.
# Bell shaped/Normal, because the bars are all tall in the middle and tapper off.

# 4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot.
str(Delivery_Times)  
colnames((Delivery_Times))
breaks <- round(histogram$breaks)
frequency <- histogram$counts
mids <- histogram$mids
classes <- c()
for (i in 1 : (length(breaks)-1) ) {
  classes[i] <- paste(" [", breaks[i] , " , " , breaks[i+1],") ")    }

cbind(classes = classes , frequency = frequency , midpoint = mids)

cum_freq <- cumsum(frequency) # get cumulative fer
(breaks [-1])

plot(breaks [-1] , cum_freq , 
     type = "o" , pch = 16 , col = "pink" ,
     main = "Cumulative Freq polygon (ogive)" ,
     xlab = "Delivery Time" , 
     ylab = "Cumulative Freq"  )
