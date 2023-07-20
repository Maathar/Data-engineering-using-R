#Day3 Coding
# if, else, else if Statements
#
#if (condition){
  # Execute some code
#}
#
hot <- FALSE
class(hot)
temp <- 60
class(temp)
#
# Reset temp
temp <- 70
if (temp != 80){
  hot <- FALSE
}
hot
#
if( 1 == 2){ print('hi')}
if( 1 == 1){ print('hi')}
#
if (3<5) {
  # Code to execute if true
  print('Yes')
} else {
  # Code to execute if above was not true
  print('No')
}
#____________________________________
temp <- 30
if (temp > 90){
  print("Hot outside!")
} else{
  print("Its not too hot today!")
}
#_______________________________
temp <- 50.5
if (temp >= 80){
    print("Hot outside!")
  } else if(temp<80 & temp>=50){
          print('Nice outside!')
          } else if(temp <50 & temp >= 32)
            {
                print("Its cooler outside!")
                } else{
                  print("Its really cold outside!")
                }

#____________________________________
x <- 0
while(x < 10){
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  # add one to x
  x <- x+1
}
#____________________________________
x <- 0
while(x < 10){
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10!")
    print("I will also print, woohoo!")
  }
}
#___________________________________

s=as.integer(readline(prompt = "Enter start number:"))
e=as.integer(readline(prompt = "Enter end number:"))
i=s
sum=0
while (i<=e){
   sum=sum+i
   i=i+1
   }
 print(paste("Sum is",sum))

n=as.integer(readline(prompt = "Enter number or 999 to stop:"))
 sum=0
 items=0
 while(n!=999){
   sum=sum+n
   items=items+1
   n=as.integer(readline(prompt = "Enter number or 999 to stop:"))
   }

  if (items>0){
   avg=sum/items
   print(paste("Average is",avg))
  
    } else {
     print ("No number was entered")
    }
 # _________________________
 # For loop over a vector
 vec <- c(1,2,3,4,5)
 for (temp_var in vec){
   print(temp_var)
 }
 #
 mat <- matrix(1:25,nrow=5)
 mat
 #
 for (i in mat){
   print(i)
 }
 #
 for (row in 1:nrow(mat)){
   for (col in 1:ncol(mat)){
     print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
   }
 }
 #
 id=c(123,456,789,234,567,890)
 gender=c('M','F','F','M','M','M')
 score=c(90,92,80,70,80,60)
 for (i in 1:length(id)){
    if (gender[i] =='M' & score[i]>=80){
      print(id[i])
      }
 }
 #
 
 #_________________________