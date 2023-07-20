 # Day2 coding

library(ggplot2)
df=mtcars
str(df)  # prints the structure of the df data frame
summary(df)  #prints a summary of the df data frame

# creates a histogram of the mpg variable in the df data frame. 
#The hist() function creates a histogram of a numeric variable.
#The color="red" argument specifies that the color of the bars in the histogram should be red. 
#The main = 'code academy' argument specifies that the title of the histogram should be "code academy"
hist(df$mpg,color="red",main = 'code academy')

# This will bring up the help documentation for the hist() function.
?hist

..................................................................

#import ggplot2 
install.packages("ggplot2")
import(ggplot2)

library(ggplot2)
#creates a vector of 200 normally distributed random integers with a mean of 4 and a standard deviation of 3.
#The as.integer() function converts the vector to a vector of integers
varnorm=as.integer(rnorm(200,4,3))

#creates a vector of 200 uniformly distributed random integers between 1 and 7.
#The as.integer() function converts the vector to a vector of integers.
varunif=as.integer(runif(200,1,7))

#creates a vector of 200 normally distributed random integers with a mean of 10 and a standard deviation of 5.
count=rnorm(200,10,5)

#creates a data frame called df that contains the three variables varnorm, varunif, and count.
df=data.frame(varnorm,varunif, count)
df
str(df)  #prints the structure of the df data frame
summary(df)  #prints a summary of the df data frame

# Create a histogram of the varnorm variable
hist(varnorm)

ggplot(data=df,aes(varnorm)+geom_histogram())
qplot(data=df,x=varnorm,geom='histogram',xlim = c(0,15), color='red')

qplot(varnorm,data=df, geom='histogram',fill=I('orange'),alpha=0.2 )

#ggplot(data,aesthetics)
pl<- ggplot(df,aes(x=varnorm))
#Adding histogram geometry
pl+geom_histogram()

# Adding color
pl+geom_histogram(binwidth = 1, color='red',fill='pink')

# Adding labels
pl<-ggplot(df,aes(x=varnorm))
pl+geom_histogram(binwidth = 1, color='red',fill='pink')+xlab('Normal Distibution')+ylab('Occurences')+ggtitle('Histogram of Normal Distibution')

# change Alpha (Transparency)
pl<- ggplot(df,aes(x=varnorm))
pl+geom_histogram(binwidth = 1, color='red',fill='blue',alpha=0.6)+xlab('Normal Distibution')+ylab('Occurences')+ggtitle('Histogram of Normal Distibution')

#line types
pl<- ggplot(df,aes(x=varnorm))
pl+geom_histogram(binwidth = 1, color='red',fill='pink',alpha=0.6,linetype='dotted')+xlab('Normal Distibution')+ylab('Occurences')+ggtitle('Histogram of Normal Distibution')

#Advanced Aesthetics
pl<- ggplot(df,aes(x=varnorm))
pl+geom_histogram(binwidth = 0.5, aes(fill=factor(varnorm)),linetype='dotted')+xlab('Normal Distibution')+ylab('Occurences')+ggtitle('Histogram of Normal Distibution')



