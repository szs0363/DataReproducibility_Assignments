##Iterations and Functions##

library(ggplot2)
library(tidyverse)

install.packages("drc")
library(drc)

#Creating a function to convert fahrenheit into celcius
F_to_C <- function(f_temp){
  celcius <- (5*(f_temp - 32)/9)
  return(celcius)
}

F_to_C(32)
F_to_C(100)

#Creating a function to convert celcius to fahrenheit
C_to_F <- function(c_temp){
  fahrenheit <- (c_temp*(9/5) + 32)
  return(fahrenheit)
}

C_to_F(0)

#Iteration functions in R
rep("A", 3) #repeat A 3 times

rep(c("A", "B"), 5) #repeat A and B 5 times

rep(c(1,2,3,4), times = 4) # repeats 1,2,3,4, 4 times 

rep(c(1,2,5,2), times = 4, each = 4) # repeats 1 four times, 2 four times, 5 four times, and 2 four times.

seq(from = 1, to = 7) # sequence of numbers 1 to 7

seq(from = 0, to = 10, by =2) # sequence of numbers from 0 to 10 by 2s 

# combined seq() and rep()
rep(seq(from = 0, to = 10, by = 2), times = 3, each = 2)

LETTERS
seq_along (LETTERS) #will return the numbers not actual letters

#Using loop with for
for (i in 1:10) {
  print(i*2)  
}

for (i in -30:100){
  result <- F_to_C(i)
  print(result)
}

#Using rbind to create a dataframe with results from loop
celcius.df <- NULL 
for (i in -30:100){   
  result_i <- data.frame(F_to_C(i), i)   
  celcius.df <- rbind.data.frame(celcius.df, result_i) 
}
