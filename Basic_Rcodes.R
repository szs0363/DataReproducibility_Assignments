#Exercise 1
#R  is a big calculator
2+2
2-2
2/2
2*2

#Exercise 2#
#Objects

#This is a numeric variable
x <- 3
y <- 2
x+y
x-y
x/y
x*y

#This is a character variable
name <- "Samraj"
seven <- "7"

name+seven

class(name)
class(seven)

#Concatinate function

vec <- c(1,2,3,4,5,6,7)
vec <- 1:7
vec2 <- c("Sam", "Bam", "Ram")
vec3 <- c(TRUE, FALSE, TRUE)
vec2[3]
vec+3

#Basic functions in R
vec
mean(vec)
sd(vec)
median(vec)
summary(vec)
sum(vec)
min(vec)
max(vec)
abs(vec)
sqrt(vec)
sqrt(sum(vec))
log(vec) #natural log
log10(vec)
exp(vec)

#Logical operators
# > greater than
# < less than
# = (used for assigning values from left to right)
# == (exactly equal)
# != #not equal to
# $ and
# | or
# >= greater than or equal to
# <= less than or equal to

1 > 2
1 < 2
1==1
1<=2

t <- 1:10
t

#Numbers greater than 5 or less than 10
t[(t >5) | (t <10)]

#Numbers greater than 6 and less than 8
t[(t > 6) & (t < 8)]

#Ask in R if a number exists within a vector

9 %in% t

#Data types
#Scalar
x

#vector
t

#Creating matrix
mat1 <- matrix(data = c(1, 2, 3), nrow = 3, ncol =3)
mat1

mat2 <- matrix(data = c("Sam", "Bam", "Ram"), nrow = 3, ncol = 3 )
mat2

mat1[1,3]
mat1[1,]
mat1[,3]

#Dataframes
#dataframes are basically like matrices but with multiple data classes or data types(i.e., logical and numeric)
df <- data.frame(mat1[,1], mat2[,1])
df
colnames(df) <- c("value", "name")
df[1,2] #firstrow & secondcolumn

df[, "value"]

df$name #accessing columns
df$value[1]
df$name[2]

#Subsetting/indexing

#the element of the column value such that names is equal to Sam
df$value[df$name =="Sam"]
df$value[df$name %in% c("Sam", "Bam")]
df$value[df$name != "Sam"]

#retun the elements of the column value within the dataframe df such that name is not equal to Sam and Bam

#Subset function
subset(df, name == "Sam")
df$value[!df$name %in% c("Sam", "Bam")]

#Making a new column in a dataframe
df$log_value <- log(df$value)
df

#Installing packages
#tidyverse
#lme4
#purrr

install.packages("tidyverse") #install the package from CRAN repository
library(tidyverse) #loads the functions into R

#Load data into R
#txt or csv file
data <- read.csv()
data2 <- file.choose()
data3 <- read.csv(file.choose(), na.strings = "")