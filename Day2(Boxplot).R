#Day2 Coding

#creates a boxplot of the mpg variable by the cyl variable.
qplot(factor(cyl), mpg, data = mtcars, geom = "boxplot")

#creates a ggplot object called pl. The aes(factor(cyl), mpg) argument specifies that the x-axis 
#of the plot should be the factor(cyl) variable and the y-axis of the plot should be the mpg variable.
# pl + geom_boxplot(), adds a boxplot to the pl object.
pl <- ggplot(mtcars, aes(factor(cyl), mpg))
pl + geom_boxplot()

# adds a boxplot to the pl object and flips the coordinates of the plo
pl + geom_boxplot() + coord_flip()


#adds a boxplot to the pl object and fills the boxes with the values of the factor(cyl) variable.
#The aes(fill = factor(cyl)) argument specifies that the fill color of the boxes should be the values of the factor(cyl) variable.
pl + geom_boxplot(aes(fill = factor(cyl)))


#adds a boxplot to the pl object and fills the boxes with grey and colors the borders blue.
pl + geom_boxplot(fill = "grey", color = "blue")

