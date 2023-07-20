# Day2 Coding

library(ggplot2)

#loads the mpg dataset
data(mpg)

#creates a ggplot object called g. 
#The aes(class) argument specifies that the x-axis of the plot should be the class variable.

# counts (or sums of weights)
g <- ggplot(mpg, aes(class))

# Number of cars in each class:
#adds a bar chart to the g object
g + geom_bar()

#dds a bar chart to the g object and fills the bars with the values of the drv variable. 
#The aes(fill = drv) argument specifies that the fill color of the bars should be the values of the drv variable.
g + geom_bar(aes(fill = drv))


#adds a bar chart to the g object and fills the bars with the values of the drv variable, and fills the space between the bars with the same color. 
#The position = "fill" argument specifies that the bars should be filled.
g + geom_bar(aes(fill = drv), position = "fill")


#adds a bar chart to the g object and dodges the bars, so that they do not overlap. 
#The position = "dodge" argument specifies that the bars should be dodge
g + geom_bar(aes(fill = drv), position = "dodge")
