# Day  1 Coding
x <-'r'
class(x) # returns the class of an r object
x=c('r','t') # create a character vector
x1=c(3.5,45) # create a numeric vector
c(TRUE,FALSE)->X2  # create a logical vector

# Create a vector with temperature 
temps=c(34,54,23,76,78,89,3)    
temps
# Print the length of temps  vector.
length(temps)
# There is one messing name , so it will print it NA
names(temps)=c('Sun','Mo','Tu','We','TH','Fr')
temps

# Give all the temps names
names(temps)=c('Sun','Mo','Tu','We','TH','Fr','Sa')
temps

# Print the temps and their name of index 1
temps[1]

# Print the temps and their name of index 3 to 6
temps[3:6]

# Another way to print the temps and their name of index 3 to 6
temps[c(3:6)]

# Square temp
Square_temp=sqrt(temps)
Square_temp

# Print the minimum temp
min_temp=min(temps)
min_temp

# Print the maximum temp
max_temp=max(temps)
max_temp

#Multiply each temperature by 4 
mul_temp=temps*4
mul_temp

#Add 10 to each temperature
add_temp=temps+10
add_temp

# Print the temperature that are grater then 50
temps[temps>50]

# Print the temperature that are grater then 70 or less than 40
temps[(temps<40) | (temps>70) ]

# Print the temperature that are grater then 69 and less than 80
temps70=temps[temps>69 & temps<80]
temps70

# Print the temperature that are grater then 70 or less than 40
tempsNo70=temps[temps<70 | temps>79]
temps70

#Print the temperature of Monday
temps['Mo']

#Print the temperature of Wednesday and Thursday
temps[c('We','TH')]

# The avergae of temps in weekend
temps_weekend=mean(temps[c(6:7)])
temps_weekend

# The avergae of temps in weekend
temps_week=mean(temps[c(1:5)])
temps_week


# Delete the second number in the vector
var1=c(34,35,9)
var1[-2]

#Print the max temperature
temps[temps==max(temps)]

#Print the temperature of  Monday and Tuesday
temps01=temps[names(temps)%in% c('Mo','Tu')]
temps01

#Print the temperature of all days without Monday and Tuesday
temps01=temps[!names(temps)%in% c('Mo','Tu')]
temps01

# What is two to the power five
a=2**5
print(a)

# Create a vector called stock.prices with the following data point:23,27,23,21,34
stock.prices=c(23,27,23,21,34)
stock.prices

# Assign names to the price data points relating to the day of the week,starting with Mon,Tue,Wed,etc..
names(stock.prices)=c('Mo','Tu','We','TH','Fr')
stock.prices

# What was the average (mean) stock price for the week?
av=mean(stock.prices)
av

# Create a vector called over.23 consisting of logical that correspond to the days where the stock price  was more than $23
stock.prices>23

# Use over.23 vector to filter stock.prices and only return the day and prices where the price was over $23 
over.23=stock.prices[stock.prices>23]
over.23

# Use a built in function to find the day and the price was the highest
names(stock.prices[stock.prices==max(stock.prices)])

# Matrices
# Create a matrix with numbers from 1 to 20 with 5 rows and 4 columns
y=matrix(1:20,nrow=5,ncol=4)
y

?matrix
# Create a matrix with numbers (1,26,24,68)  with 2 rows and their names are ("R1","R2") and 2 columns and their names are("C1","C2")
cells=c(1,26,24,68)
rnames=c("R1","R2")
cnames=c("C1","C2")
mymatrix=matrix(cells,nrow = 2,ncol = 2,byrow=FALSE, dimnames = list(rnames,cnames))
mymatrix

# Print the names of the columns in mymatrix
colnames(mymatrix)=cnames
colnames(mymatrix)

# Multiply the mymatrix with it self
mymatrix*mymatrix

# Create matrix  3*2 
m=matrix(1:6,nrow=2,ncol=3)
m

# Create matrix  2*3 
g=matrix(1:6,nrow=3,ncol=2)
g

# Multiply the 2 Matrices with different shape 3*2 * 2*3, the output will be  2*2
m_matrix=m%*%g
m_matrix

# Multiply the 2 Matrices with different shape 2*3 * 3*2, the output will be  3*3
m_matrix=g%*%m
m_matrix

#Print the value in the row 1 and column 2
n=g[1,2]
n

#Print all value in the row 2 
n=g[2,]
n

#Print all value in the column 2
n=g[,2]
n

# Home Work
# Create a list of 30 random numbers from a uniform distribution
runif_list = runif(30,1,9)
runif_list
#runif()	Generates random numbers from a uniform distribution,n (number of random numbers), min (minimum value), max (maximum value)

# Create a list of 30 random numbers from a normal distribution
rnorm_list = rnorm(30,5,6)
rnorm_list
#rnorm()	Generates random numbers from a normal distribution	n (number of random numbers), mean (mean of the normal distribution), sd (standard deviation of the normal distribution)

# Plot the two lists of random numbers
plot(runif_list, rnorm_list,col=c("red", "blue"), xlab="Runif", ylab="Rnorm")

#generate 30 random integer numbers from a normal distribution with mean 5 and standard deviation 6.
rnorm_list = rnorm(30,5,6)
integer_list = as.integer(rnorm_list)
print(integer_list)

#generate 30 random integer numbers from a uniform distribution between 1 and 9
runif_list = runif(30,1,9)
integer_list = as.integer(runif_list)
print(integer_list)




