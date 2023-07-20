#Day3 Coding
# Create x1,x2 variables

#creates a vector of 5 integer values that are normally distributed with a mean of 60 and a standard deviation of 10. 
#The as.integer() function converts the vector to a vector of integers.
x1 = as.integer(rnorm(5,60,10))

#creates a vector of 5 letters that are the first 5 letters of the alphabet. 
#The LETTERS function returns a vector of all 26 letters of the alphabet.
x2 = LETTERS[1:5]

#make sure x1 and x2 have the same length
df = data.frame(x1,x2)
df 

#Try the diffrenet color for the barplot
barplot(x1~x2, col=rainbow(5))
barplot(x1~x2, col=palette())
barplot(x1~x2, col=heat.colors(5))
barplot(x1~x2, col=terrain.colors(5))
barplot(x1~x2, col=topo.colors(5))
barplot(x1~x2, col=cm.colors(5))

# For more color Palettes
# https://rpubs.com/MdAhsanul/colors_palettes






