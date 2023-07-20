# Day2 coding

# marksheet Dataset imported from kaggle , read the dataset
library(readr)
marksheet <- read_csv("C:/Users/hp/Desktop/makeen/Data engineering using r/marksheet.csv")
View(marksheet)

# Create a matrix with numbers from 1 to 9 with 3 rows and 3 columns
mymatrix=matrix(1:9,nrow = 3, ncol = 3)
mydf=data.frame(mymatrix)
mydf  # prints the DataFrame to the console.
View(mydf) #opens the DataFrame in the RStudio viewer.


install.packages("rio")  # install the rio package
library("rio")  # load the library
export(mtcars,"mtcars1.csv") # Export the mtcars dataset to a CSV file
export(mtcars,"mtcars1.xlsx") # Export the mtcars dataset to an XLSX file


#__________________________________________________________________

# Exercise: Create a matrix of 5 student scores in three subjects
#Create student scores by using functions,
# Make sure the numbers you get are integer without decimal points 

#              math  phys  bio  total percent 
# Maathar
# Asma
# Noor
# total
# save the results in an excel file 


maathar=rnorm(3,45,4)
Asma=rnorm(3,66,3)
Maya=rnorm(3,80,9)
Noor=rnorm(3,56,3)
studmatrix=rbind(maathar,Asma,Maya,Noor)
studmatrix

# add a total column to the matrix.
#The Total column is the sum of the values in each row of the studmatrix matrix.
studmatrix=cbind(studmatrix,'Total'=rowSums(studmatrix))
studmatrix

#add a percent column to the matrix.
#add a new row to the studmatrix matrix. The new row contains the total scores for each variable.
studmatrix=cbind(studmatrix,'Percent'=(studmatrix[,4]/300))
studmatrix

#add a new row to the studmatrix matrix. The new row contains the total scores for each variable.
studmatrix=rbind(studmatrix,'Total'=colSums(studmatrix))
studmatrix

mydf=data.frame(studmatrix)
mydf
m=edit(mydf) # Through edit I add the colunms name
View(m)

#save the df data frame as an Excel file
library(readr)
df <- data.frame(m)
write_excel_csv(df, "df.csv")

.........................................................................................

# Missing Values ----
# Detecting Missing Values
any(is.na(df))
# delete rows contain missing values
df <- df[!is.na(df$col), ]
# replace NAs with something else
df[is.na(df)] <- 0 # works on whole df

........................................................................................
# Merging Data Frames----

#create dataframeA 
dataframeA <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Maather", "Noor", "Asma"),
  Age = c(25, 30, 20) )

#create dataframeB
dataframeB <- data.frame(
  ID = c(1, 2, 3),
  City = c("Sohar", " Muscat", "Sur") )

#merge the two data frames by the ID column
total <- merge(dataframeA, dataframeB, by="ID")
total

...................................................................................

# Selecting Observations----

library(datasets)
data(mtcars)    #loads the mtcars dataset
summary(mtcars)   #prints a summary of the mtcars dataset 

#creates a new dataframe  that contains the rows from the mtcars dataframe
#where the cyl variable is equal to 6 and the mpg variable is greater than 20.
newdata <- mtcars[which(mtcars$cyl == 6 & mtcars$mpg > 20),]
newdata

#creates a new dataframe that contains the rows from the mtcars data frame where 
#the mpg variable is greater than 20 or the cyl variable is less than or equal to 4.
# only columns that will be included are the mpg, cyl, disp, and hp columns.
new <- subset(mtcars, mpg >= 20 | cyl <= 4, select=c(mpg, cyl, disp, hp))
new

#reates a new dataframe where the cyl variable is equal to 6 and the mpg variable 
#is greater than 20. The select=cyl:qsec argument specifies that the columns from 
#cyl to qsec will be included in the new dataframe.
new_data <- subset(mtcars, cyl == 6 & mpg > 20, select=cyl:qsec)
new_data


#creates a random sample of 3 rows from the mtcars data frame.
#The sample(1:nrow(mtcars), 3, replace=FALSE) function generates a vector of 3 
#random numbers from 1 to the number of rows in the mtcars data frame.
#The replace=FALSE argument specifies that the random numbers should not be drawn with replacement
mysample <- mtcars[sample(1:nrow(mtcars), 3, replace=FALSE),]
mysample


..........................................................................................
# Using SQL statement to Manipulate data frame----

library(sqldf)

#The query selects all of the rows from the mtcars data frame where the
#carb variable is equal to 1, and then orders the rows by the mpg variable
newdf <- sqldf("select * from mtcars where carb=1 order by mpg",row.names=TRUE)
newdf










