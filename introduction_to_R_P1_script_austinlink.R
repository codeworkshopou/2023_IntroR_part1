#################################################
###### Computer Science in Biology Workshop #####
######## Introduction to R I ############
#################################################






# Welcoming Students




# Introductions 




# Why R?




# Different Ways to Run R

#     1. R Studio
#          a.
#          b.
#          c. 
#          d.
#     2. Text Editor + Console
#     3. Just the console!




# Getting Help








# -----------------------------------------
# Creating an R project 
# -----------------------------------------

# Steps:
# 1. Create file folder and name it something - somewhere easy to find, like your desktop!
# 2. Open R studio
# 3. Select cube icon with green plus / File > New Project... > New Directory 
  # > New Project > select your folder
# 4. A new screen will pop up! 
# 5. Open file folder
# 6. Create sub folders [Code/Scripts, Data, Processed Data, anything you might need to stay organized] (EXPLAIN THE SIGNIFICANCE OF EACH)


# Being organized and keeping the R workspace clean will save you a lot of headache in the longrun!!





# -----------------------------------------
# General Coding Tips
# -----------------------------------------

# 1. R is case sensitive ("A" does not equal "a")
# 2. Best practice is to put spaces between object, values, commas, etc. <- (though R does not require this) - readability / style!
# 3. Missing parentheses, commas, or quotation marks cause a vast majority of errors - R will tell you!
# 4. Comments: 
#     - When you are in the source typing out a script, using a hashtag in front of a line will "tell" R to not process it as code
#     - Comments are priceless, leaving comments will allow one to detail what a given block of code is, why/how it was made, etc. 
#     - Super useful for collaboration purposes 
#     - You can even take notes during this short course using comments, pen and paper are fine too but you can do it in here too 





# -----------------------------------------
# The Components of R 
# -----------------------------------------



# Objects, Functions, Arguments, Operators 



### OBJECTS: 


#    Common Object Types: 
#         1. numeric -> integers, #'s
#         2. character -> letters, words (species, A/B/C)
#         3. logical -> TRUE / FALSE
#         4. vector -> 1D array of objects
#         5. matrix -> 2D array of objects
#         6. list -> collection of objects of different lenghts of different types 
#         7. factor -> Categorial variables


#    How to Make Them:
#        - Format: name <- what is contained in the object 
#        - or vice versa 

#    Tips for Naming Objects:
#        - easy to remember, not too long
#        - clear, concise, specific, and distinct!
#        - cannot start with a number, contain spaces, commas, or any operators 
#        - Underscores are fine though!
#        - If you want to rewrite the name of an object, just alter your code then rename it using the same object name as the previous one 



# SOME EXAMPLES 

a <- 5 + 3

# When you run this code, you can see the value of "a" within the environment, or you can type "a" directly into the console and get the answer there 

# To summon/bring forth any object, all you have to do is type it into the console or run the code

# You can add,subtract/multiply to existing objects, add objects together, and a whole lot more

a + 7 

b <- 20

a + b

c <- a + b + 12



# Vectors are a type of object, they are a 1D collection of values/characters/or components, here's how to make them 

myfirstvector <- c(8, 9, 10, 11)

# the "c" before the parentheses is called "concatonating"/"combining", it is a way to put multiple values into one object 
# Similarly to our examples earlier, if you were to type the name of your vector directly into the console and push enter, you will see what was put into your vector
# Vectors are useful because you can have an object that contains information of a specific type that you are interested in performing calculations/statistics/whatever you have in mind 


















### FUNCTIONS and ARGUMENTS:

# Functions are things that we, the ones writing code, can apply to objects

# There are many, many, many types of functions, you can pretty much find one to do anything

# If you cannot find one to do what you want, you can even write your own to do exactly what you want to do

# We won't get into writing functions for a while, so to start let's talk about how to apply functions to objects 

# The basic format of applying a function to an object is 
#    > function(object, arguments...)

















# MEAN

# finding the average, or mean, of something is a pretty standard thing one might need while working with any data
# Let's find the mean of the vector we just made, using the mean function

mean(myfirstvector)















# SEQ

# Some functions do not necessarily need to have an object as an input, however
# The function "seq()" is one such function
# This function allows one to generate sequences of integers 
# As I mentioned a second ago, however, this function does not take an object
# But it does use arguments to generate sequences according to some criteria 
# arguments are additional inputs to a function that are not objects, but they farther specify what one wants a given function to do 

# In the case of seq(), there are three we will use today: from =, to =, and by = 
# EXPLAIN WHAT THESE DO

# Example of seq()

myfirstsequence <- seq(from = 0, to = 20, by = 2)

# You can see the sequence generated in the environment or by typing the name of the brand new object into the console 

### Are there any questions about functions, arguments, or objects so far??


####### FIRST THOUGHT EXERCISE #########

# Does anyone have any ideas how, in one line of code, one could both generate a new sequence and take the mean of that sequence?
# I have not explicitly given you the answer on how to do that, and I am sure you could do it in two steps easily based on what we 
#        have talked about so far, but does anyone have any ideas on how to do it in just one??
# I'll give you a minute or two to think and try things out 


# Reveal the secret, then let them try it on their own

mean(seq(from = 2, to = 600, by = 20))

or 

meanofmyfirstseq <- mean(seq(from = 2, to = 600, by = 20))
















# REP

# The function rep() allows one to make a repetetive sequence of objects 
# the basic format of rep() is 
#         rep(object/integer, # of times to be repeated)

rep(x = 7, times = 4) or rep(7,4)

# This gives 7 7 7 7 

# Let's do another example
# Let's make a vector called "x" to explore how the function rep works 

myfirstrep <- c(2, 4, 6)

# The following example is pretty standard, we know what we can sort of expect from it

rep(myfirstrep, 2)

# This gives 2 4 6 2 4 6


# However, what does this put out Try it for yourselves and see

rep(myfirstrep, c(1, 2, 3))

# 2 4 4 6 6 6 

# Sometimes functions in R can work in unexpected ways, this being one of them
# It took the first number in our vector and repeated it one time, the second number of our vector and repeated it twice, and the third number of our vector and repeated it three times

# When messing around with functions, it's important to have an idea of what to expect when it comes to their output, that way your coding is more efficient 






















# PRACTICE QUESTIONS 

# QUESTION ONE: HOW WOULD YOU GENERATE THIS LINE OF NUMBERS??

#          0 2 4 6 8 10 0 2 4 6 8 10 0 2 4 6 8 10

pq1 <- rep(seq(0, 10, 2), 3)



# QUESTION TWO: FIND THE MEAN OF THE SEQUENCE GENERATED BY THIS LINE OF CODE!

mean(pq1)

# answer is 5 



# QUESTION THREE: HOW WOULD YOU GENERATE THIS SEQUENCE?

#       0 0 1 1 2 2 3 3 4 4 5 5

rep(c(0, 1, 2, 3, 4, 5), each = 2)

rep(0:5, each = 2)



# QUESTION FOUR: WHAT ABOUT THIS ONE??

# 4 3 2 1 4 3 2 1 4 3 2 1

rep(4:1, 4)

rep(seq(from = 4, to = 1, by = -1), 4)

































# Character Patterns


# Let's say we want to generate an object of rainfall in inches for an instance in time =that has the names of each plot of land assigned to that precipitation amount

# first, let's generate the names


PLOTS <- c("P.1", "P.2", "P.3", "P.4", "P.5")

# EXPLAIN THE QUOTATIONS

# There is a way to do this a little faster than just typing it all out, especially if you were to have a longer list of plots (like, in the hundreds)

# It's not necessary to know, but it could potentially help in the future so I will cover it briefly 

PLOTS <- paste("P", 1:5, sep = ".")


# Now let's generate our vector of precipitation amounts into a vector 

RAINFALL <- c(3.4, 4.5, 2.7, 6.1, 3.3)

# The function NAMES will allow us to assign the PLOT vector names to the precipitation amounts that we just generated

# It is important to note that, before doing this, that the amount of values in each vector matches up

# For example, we have five plots of land, we need to make sure we have five precipitation amounts or R may return an error 

names(RAINFALL) <- PLOTS

# Now, whenever we type "RAINFALL" into the console, it will return both the plot names AND the rainfall amounts!!



# Imagine our object we just generated had hundreds of values in it instead of five
# Let's say we are interested in what the 3rd value in RAINFALL is
# The way we do it is another operator that works differently than the colon operator I showed you earlier

# For this, we use brackets 
# Brackets in R are used for what is called indexing 
# Indexing allows one to select specific rows/columns/elements within an object and isolate them for some purpose

# So if we were interested in getting the 3rd value in RAINFALL, we would do it like this 

RAINFALL[3]

P.3 
2.7 

# It may seem a little silly to look at the thrid element since we only have five, but when working with realllllly large datasets, indexing can be super super helpful 



# You can also us another operator, the minus sign or dash, to exclude an object through indexing 

RAINFALL[-3]

# This will show all of the values besides the third one 

# You can also use the colon operator to select a spread of elements

RAINFALL[2:4]


# You can also use a conditional operator to show elements according to a given criteria 

# For example, the < or > signs can be used to identify elements that are higher or lower in value than some number 

RAINFALL[RAINFALL > 5]

# This returns the only value that is greater than 5 

# Similarly, <= and >= is less than and greater than or equal to 


# ANY QUESTIONS??????






























# MATRICES




# Matrices are 2D objects, unlike vectors that are 1D, that contain many elements of the same type 

# To create a matrix, one can put a vector or vectors into the matrix function 

# Let's generate a vector to make a matrix 

height <- c(6.1, 5.8, 5.9, 5.4, 5.3, 6.0)

# Now, to make a matrix from this vector is pretty simple

myfirstmatrix <- matrix(height)




# Notice how R filled the matrix from the top of the column to the bottom by the order in which we put entered the values into the vector 

# Also take notice of the brackets above and to the left of the numbers; these are useful for indexing 

myfirstmatrix[3,1]

# RETURNS 5.9



# What if we wanted to change the dimensions of our matrix?? 

# We can use an argument of the matrix function to do so!!

myfirstmatrix <- matrix(height, nrow = 3)

# Enter that and see what happens 

# It forces the matrix to have three rows and extends the amount of columns we have, notice that the indexing has changed 



# Let's say we want to take the mean of the second column of our newly constructed matrix 
# Once again, we do this by indexing 

mean(myfirstmatrix[,2])

# Leaving the first half of the brackets empty tells R to not compute the mean by row, instead, what we have done is told R to compute the mean of the second column (so using 5.4, 5.3, and 6.0)
# If we were to switch it to:

mean(myfirstmatrix[2,])

#              we have now told R to take the mean of the second row (5.8 and 5.3)



# A useful little function when working with matrixes is the transpose funtion, which is: 

t(myfirstmatrix)

# This transposes, or "flips" the number of rows for the number of columns and vice versa 
# When we constructed it, we told R to make our matrix with three rows, but now it has three columns
# this will not fundamentally change the matrix we made when we retype the object name into the console, however, because we did not rewrite the name of our object
# Let's rewrite the name for practice, it's very important to take stock and make sure you are updating/taking inventory of the objects you have in your workspace 



myfirstmatrix <- t(myfirstmatrix)

# You don't necessarily have to keep the name the same though, you could also have done this and have kept the original matrix 


myfirstmatrixtransposed <- t(myfirstmatrix)







# Let's look at another way to construct matrices by creating an additional vector that is complementary to our "height" one

weight <- c(88.4, 74.2, 72.7, 75.9, 70.1, 90.0)


# So imagine both our height and weight matrices apply to some measurements we have taken from a population of animals of some kind, the first value of height corresponds to the first value of weight, etc and so on

# Now, we want to combine these two using another matrix function


size <- cbind(height, weight)

# This created a matrix with two columns that have our titles, height and weight, above the columns 





# Now let's say we want to add some row names to our matrix to represent each individual animal that was sampled from and to complement our column names 

# We do that using some naming functions 


rownames(size) <- letters[1:6]

# This generates 6 letters that match up to our six sampled measurements whenever we summon out matrix by typing it into the console 

size




# If we did not have column names, we could also make those by using the counterpart to the rownames function

colnames(size) <- c("HEIGHT", "WEIGHT")

# Beforehand, we did not need to include quotations when we used the cbind function, for the cbind function just appropriated the names of our vectors that are already objects

# However, when using the naming functions, it is important to use the quotations for things that are named!!

# When you summon the size matrix, notice that the column names have been overwritten with all caps, HOW YOU INPUT STUFF MATTERS!!


 























# PRACTICE QUESTIONS!!!!!


# QUESTION ONE:  Find the mean of the weight column of our matrix!


mean(size[,2])

78.55


# QUESTION TWO:  Find the mean of the height column of our matrix!


mean(size[,1])

[1] 5.75


# QUESTION THREE:  What happens when you use cbind() on these vectors?? find out 

pq3veca <- c(1, 2, 3, 4)

pq3vecb <- c(1, 2)




































# SAMPLE FUNCTION 


# sample() is a function that returns collections of elements that are drawn randomly from an object 

sample(height)

# Running this line of code returns the same number of elements back, but the order they are returned is different than how we put them into the vector 

# The vector, in this case, was sampled without replacement; once a value or element is pulled out of the vector as output, it is not "put back into the bin"



# We can use arguments to further specify how we want the sample() function to sample elements from an object 

sample(height, 3)

# This, for example, allows us to select just 3 elements at random, but keep in mind, the elements are still sampled without replacement 

sample(height, replace = T)

# Using the "replace" argument, we generate an object with the same number of elements as the object sampled from, but this time WITH replacement 

# Depending on what question you are trying to answer in an experiment or test, the distinction of sampling with replacement or without can mean a world of difference 





























# DATAFRAMES!!!


# First Dataframe!!!

# Now we are going to look at the next step up from matrices, called dataframes 

# Remember, matrices contain elements of the same type; in our example, we had numeric elements that specified various heights and weights 

# Dataframes, like matrices, are 2D objects, however, they can also have multiple classes of object within them 

# We can make a dataframe using the data.frame function, but first, let's generate a vector to put into our dataframe 

dfvector <- c(1, 2, 3, 4, 5)


myfirstdataframe <- data.frame("Column1" = c("A", "B", "C", "D", "E"), 
                  "Column2" = dfvector,
                  "Column3" = c("hi", "my", "name", "is", "Austin"))

# Remember, when you want to put a string or characters into portions of your objects, you need to put them in quotations so R treats them in that manner

# Now, let's give our dataframe some column names using something we learned earlier; we could have done it while constructing the dataframe, but
#                  I just want you guys to get used to working with R and manipulating objects 

colnames(myfirstdataframe) <- c("Letters", "Numbers", "Hello")

# Type the name of the dataframe into the console and see if it worked, it's always good to check your work and see if the code
#         is doing what you think it is doing 

myfirstdataframe


# Using the view function will let us open the dataframe and view it in a different window in the source portion of R studio, you can now switch between tabs to look at it




# There are also various functions we can use to take a glance at various aspects of our dataframe

length(myfirstdataframe) # how many columns?

class(myfirstdataframe) # what type of object is it?

str(myfirstdataframe) # what kinds of variables do we have? What is the structure of our data??







# We have briefly talked about operators like brackets, colons, and minus signs, now let me show you another really helpful one 

# The $$ allows you to pick specific columns by name!!


myfirstdataframe$Numbers   # This allows us to access the entire second column of our dataframe, which I titled "Numbers"

# Now you can use the $ to do similar things that indexing allowed us to do, but within functions!

mean(myfirstdataframe$Numbers) # mean of the numbers column

max(myfirstdataframe$Numbers) # maximum value in the numbers column

min(myfirstdataframe$Numbers) # minimum value in the numbers column




# PRACTICE QUESTION ONE: What happens if you try to take the mean of the "Letters" column?? 







# SUMMARY FUNCTION


# A really handy function when working with data within a dataframe is the summary() function

summary(myfirstdataframe)

# This function breaks down minimum, median, mean, max and other information for each column where that information is relevant, and for the ones where it isn't,
#               it shows relevant information about those columns 


















# EXAMPLE DATAFRAME, STORM CSV



# Switching gears yet again, we are going to start getting into a deeper example with a dataframe that has been provided for us

# Have each of you downloaded the two datasets (IRIS and storms) to your computers? If not, do so really quick and put them in the folder on your desktop
#                   that you created at the beginning of this course 

# First, we need to set up our workspace and get it ready to work with some data!!


# Step One: Clearing workspace
#     - Go to the session tab at the top of the window, and select "Clear workspace"
#     - Check the box to include hidden objects 



# Step Two: Setting the working directory, which is essentially where R is pulling files from, saving files to, etc. 
#              which is extremely important; we need to have our working directory correct in order to import files into R

getwd()      # This allows us to see what our current working directory is, right now it is on my desktop, but we need it to be in the folder we created for the course   

setwd("/Users/austincolelink/Desktop/Introduction to R P1 Materials")

# This funtion allows you to set the working directly from the console, but I am going to show you a really easy way to do it 

# Go to the session tab at the top of the window

# Click Set working directory, choose directory, then find the folder on the desktop tab, select it, and then confirm it 


# Now, we are going to import our STORMS dataset into R using the read.csv() function

storms <- read.csv("storms.csv", header = T)

# Now, type "storms" into the console and take a look at the dataframe 
# This data was most likely formatted in a program like excel, with each column name representing the top most row where you would input information in Excel
# The numbers on the left signify every row below that 


# read.csv is for .csv files, but data also comes in .txt files often, and there is a corresponding function for those called read.table()

# The portion of the function in quotations is the exact file name, if you did not set your working directory properly, R will return an error to you saying that
#            it cannot be found

# The "header = T" portion just means that it is taking the very top rows, or tabs, of the .csv file and making them the column names of the dataframe 



# Let's take a look at our data!!

View(storms) # doing this to get a separate window we can access the data frame from at any given moment 

head(storms) # This allows us to take a peak at the top 5 rows of the dataframe

tail(storms) # This allows us to take a peak at the bottom 5 rows of the dataframe 

summary(storms) # This let's us take a look at the summary statistics for each column of data we have 






























# Now, let's take a look at the .csv with the name "iris.csv"



# 1) Practice loading it in using one of the functions I taught you. 

iris <- read.csv("iris.csv")



# Now once we have it in here, let's use the View() function so we can have it in front of us while we code 

View(iris)



# Notice that, in the id column, all of the id's are kind of mixed up and out of order?
#         Wouldn't it be nice if we could fix that?

# We can do that using the order() function

irisbyid <- iris[order(iris$Plant.ID),]

# Notice how I made a new object, I didn't overwrite the original file because it's possible we could need it for something else 

# Coincedentally, this also clustered all of the unique species together 




# 2) Now let's calculate the average sepal length across all years and species

mean(iris$Sepal.Length)




# 3) How would we find the earliest and latest years in which these measurements were taken??

max(iris$Year)
min(iris$Year)






# 4) INDEXING USING THE WHICH FUNCTION:

# At this point it is pretty easy for us to identify the maximum sepal length across all years and species

max(irisbyid$Sepal.Length)


# To find which species has the maximum sepal length, we can use a function called which()
 
irisbyid$Species[which(irisbyid$Sepal.Length == max(irisbyid$Sepal.Length))]

# Break down format of funtion

# This function allows us to dig into specific columns within a dataframe or object with a criteria, then find what is equal to that criteria

# This is extremely useful whenever there are ginormous datasets with many columns and potentially thousands of things to search through

# NOTE THAT:
# '==' is not the same as '='
# '=' is like ->




#### PRACTICE QUESTIONS!!! #####

# In which year does the maximum sepal length occur?

irisbyid$Year[which(irisbyid$Sepal.Length==max(irisbyid$Sepal.Length))]




# Which specific plant had the highest sepal length?

irisbyid$Plant.ID[which(irisbyid$Sepal.Length==max(irisbyid$Sepal.Length))]





# UNIQUE AND LENGTH FUNCTIONS

# What different species of iris can be found in this dataset? We can figure this out by using a function called unique()

unique(irisbyid$Species)




#    How many individual plants are found in this dataset? We can find this out by using the length() function!
length(irisbyid$Plant.ID)


#    How many unique values for sepal length exist? If there are fewer unique values of sepal length than there are unique 
#                     values of plant ID, what does that tell you about your irises?
length(unique(irisbyid$Sepal.Length))



#    c) More indexing: find the average sepal length for all versicolor irises in the year 2018

mean(irisbyid$Sepal.Length[irisbyid$Species == "versicolor"])

5.936

mean(irisbyid$Sepal.Length[irisbyid$Species == "versicolor" & irisbyid$Year == 2018])

6.26





















# WRITING A FUNCTION



# Let's say we don't have google, paper, or calculators, and all we have is R and the formula for converting a temperature in F to a temp in C in our minds

# We can actually create a function in R that will do this conversion for us!

# The formula for the conversion is this 

# (F temp to be converted - 32) * 5/9 



# You can write your own functions in order to make repetitive operations using a single command. You start by defining your function with a name and then give it an 
# input parameter or parameters that the user will feed to the function. Afterwards you will define the operation that you desire to program in the body 
# of the function within curly braces ({}). Finally, you need to assign the result (or output) of your function in the return statement.

# Let's break that down



FahtoCel <- function(tempF) {
  tempC <- (tempF - 32) * 5 / 9
  return(tempC)
}

# Let's start of with a name for the function       
# This is what we will type into the console after we get done making the function in order to use it 

FahtoCel


# Next, we need to designate this object as a function, we do that by writing "function" follwed by a set of paranthesis        
# These parenthesis are the parameter, or parameters, that we will be feeding our function
# In this case, it is the temperature, in F, that we want to convert to C

FahtoCel <- function(tempF)


# Next, we need to write the body of the function, in other words, the operations the function will perform on the input parameters to get our desired output
# We do this by creating a set of braces 

FahtoCel <- function(tempF){}


# Within the braces, we need to type out the formula for the conversion
# However, there is a caveat. We need to assign the formula to an object. This is because, at the end of the function, we will need to have something that R can "print"
#          for us and return as output.
# If we just make it carry out the operation with no object that can be returned to us or no function that prints the output, the function and operationswill still 
#          be carried out, however, we will not be able to see the results in the R environment.
# So first let's make an object within the braces that contains the formula for the conversion

FahtoCel <- function(tempF){
  tempC <- (tempF - 32) * 5 / 9
}


# If we were to put this into the console now, it would not return anything after we used the function as I stated earlier, so let's include a function to return our 
#           output back to us in the R environment 

FahtoCel <- function(tempF){
  tempC <- (tempF - 32) * 5 / 9
  return(tempC)
} 

# Make sure to close off the brace at the end!!

# Now, if we use the function FahtoCel() in R with a temperature in F in the parenthesis, it will be returned back to us in C!!!



### PRACTICE QUESTION ###

# Now, I want you guys to do the reverse. Write a function to convert a temperature in C to F. 

# To check if it worked right, you can use the first formula to generate a temperature in celsius, then plug in the output of it into the formula
#            you made just now to check if it converts it back to the original F temperature!!

# Let's say you converted 100 F to C in the first formula, you could use that C temperature in the new formula to "check your work" and see if it converts back to 100 F

# You may have to play with the parentheses a little bit if you do not get it on the first try, R can be pretty particular about how it wants you to format things!!

# Here is the formula, all you have to do is write the code for it!!

# °F = °C×(9/5)+32




CeltoFah <- function(tempC){
  tempF <- (tempC * (9/5)) + 32
  return(tempF)
} 






# Now let's create a function that converts a temperature in C to Kelvin 

# The formula is just taking a temperature in C and then adding 273.15 to that number

# I'll give you a few minutes to do that 


CeltoKel <- function(tempC) {
  tempK <- tempC + 273.15
  return(tempK)
}







# What about converting Fahrenheit to Kelvin? Hint: We could write out the formula, but we don’t need to!! 
#               Instead, we can compose it with the two functions we have already created!!

# Try it out and see if you can get it to work!!


FahtoKel <- function(tempF) {
  tempC <- FahtoCel(tempF)
  tempK <- CeltoKel(tempC)
  return(tempK)
}

# Remember, just because we have already created the formulas, we still need to include objects to assign those functions to within the body of a new function,
#           or else the function cannot act on it or perform operations on it



# You can create all sorts of functions. Just to show you another example, 
# If I wanted a function that could automatically tell someone "I am from this country" if I ran the function call and a country, I could do this:

iamfrom <- function(country = "") {
paste("I am from", country)
}




# Try making a function that returns the circumference of a circle when given a radius or a diameter! If you do not know the formulas for each, Google them real quick!

circumference <- function(r) {
  circ <- 2*pi*r
  return(circ)
}





# The point I want you to take from this section on creating functions is this:

# Whenever you start working, if you end up pursuing a career that requires coding, or if you're doing research, 
#           you will sometimes encounter problems that no one else has ever come across before

# It may be because your research or job is incredibly specialized, you are working on something no one has ever done before, or any number of reasons,
#           but you will be faced with something that you will have to find a solution to 

# If you need coding in your job or research, you may not be able to find a function to do EXACTLY what you want it to do
# You may need a slight deviation of a function, a completely new function that does something specieal, and you may have to craft one 
# It can actually get incredibly complicated, but it's really worth it when you do it successfully and you streamline your work and make it easier on yourself 








