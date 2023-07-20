#Day2 Coding

#loads the ggplot2 package
library('ggplot2')
# creates a data frame called df that contains the data from the mtcars dataset.
df <- mtcars
df

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame.
qplot(wt,mpg,data=df)

#color=cyl used to color the points in the scatterplot according to the number of cylinders (cyl) of the cars. 
qplot(wt,mpg,data=df,color=cyl)

#size=cyl mean size the points in the scatterplot according to the number of cylinders of the cars.
qplot(wt,mpg,data=df,size=cyl)

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame.
#The points in the scatterplot are colored and sized according to the number of cylinders (cyl) of the cars.
qplot(wt,mpg,data=df,size=cyl,color=cyl)

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame. 
#The points in the scatterplot are colored and sized according to the number of cylinders (cyl) and horsepower (hp) of the cars.
#The transparency of the points is also set to 0.6.
# Show 4 features (this gets messy)
qplot(wt,mpg,data=df,size=cyl,color=hp,alpha=0.6)


......................................................................
#creates a blank plot with the wt and mpg variables mapped to the x-axis and y-axis, respectively.
#The pl + geom_point() line of code then adds a layer of points to the plot.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point()

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame. 
#The points in the scatterplot are colored according to the number of cylinders (cyl) of the cars.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(color=cyl))

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame. 
#The points in the scatterplot are colored according to the factor level of the cyl variable.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(color=factor(cyl)))

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame.
#The points in the scatterplot are sized according to the factor level of the cyl variable.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(size=factor(cyl)))

#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame.
#The points in the scatterplot are shaped according to the factor level of the cyl variable.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(shape=factor(cyl)))
#


# creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame.
#The points in the scatterplot are shaped and colored according to the factor level of the cyl variable.
#The size of the points is also set to 4, and the transparency of the points is set to 0.6.
pl <- ggplot(data=df,aes(x = wt,y=mpg))
pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size=4,alpha=0.6)


# Gradient Scales
#creates a scatterplot of the weight (wt) and fuel efficiency (mpg) of the cars in the df data frame. 
#The points in the scatterplot are colored according to the horsepower (hp) of the cars, and the size of the points is set to 4. 
#The color of the points is also graded from red to blue, with red representing higher horsepower and blue representing lower horsepower.
pl + geom_point(aes(colour = hp),size=4) + scale_colour_gradient(high='red',low = "blue")


