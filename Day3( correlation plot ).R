# http://www.sthda.com/english/wiki/correlation-analyses-in-r

#The corrplot package is a powerful tool for creating correlation plots 
library(corrplot)
#The RColorBrewer package provides a number of color palettes that can be used in R.
library(RColorBrewer)

#calculates the correlation matrix for the mtcars dataset.
M <-cor(mtcars)


#creates a correlation plot for the M correlation matrix. 
#The type="upper" argument specifies that only the upper triangle of the correlation matrix should be plotted. 
#The order="hclust" argument specifies that the variables should be ordered by hierarchical clustering. 
#The col=brewer.pal(n=10, name="RdGy") argument specifies that the colors in the correlation plot should be 
#from the "RdGy" color palette in the RColorBrewer package.
#n=10 in the corrplot() function specifies the number of colors to use in the correlation plot.

corrplot(M, type="upper", order="hclust",
         col=brewer.pal(n=10, name="RdGy"))

## Display all the color palettes available in RColorBrewer
display.brewer.all(type="div")
