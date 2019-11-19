print('Welcome to R and R Studio') 
#This is a comment


#Numbers
myFavoriteNumber <- 9+12
print(myFavoriteNumber)
mySecondFavoriteNumber = (6*2)-1
print(mySecondFavoriteNumber)

#Strings (ie. words, characters)
myFavoriteWord = "Pizza"
print(myFavoriteWord)
myFavoriteWords <- "Cheddar" + "Cheese" #wrong
myFavoriteWords <- paste("Cheddar", "Cheese", sep=" ") #Our first function!
print(myFavoriteWords)

#Vectors
students <- c("Jaclyn", "Nathaniel", "Claire", "Blake",
           "Tyson", "Erin", "Josh", "Hannah", "JT",
           "Brendan", "Carissa", "Jacob", "Neerja")
numStudents <- length(students)
print(numStudents)
print(length(students))

#Loop
for(student in students){
  print(paste("Hello", student))
}
for(x in students){
  print(paste("Hello", x))
}

#Conditional
for(student in students){
  if(student=="Tyson"){
    print(paste("Wow, you're such a great teacher,", student))
  }else{
    print(paste("Wow, you're such a great student,", student))
  }
}

#Let's make a table together!
columns <- c("Name", "Program", "Home City", "Home State") 
tyson <- c("Tyson", "Genomics and Bioinformatics", "Queen Creek", "Arizona")
jaclyn <- c("Jaclyn", "Cancer Biology", "Naugatuck", "Connecticut")
nathaniel <- c("Nathaniel", "Neuroscience", "Kennett Square", "Pennsylvania")
#add more students here
studentTable <- rbind(tyson, jaclyn, nathaniel) #add other students
colnames(studentTable)=columns


randomNumber=runif(n=1, min=1, max=13)
randomIndex=round(x=randomNumber, digits=0)

#What is this operator called: "<-"
print(students[randomIndex])

randomNumber=runif(n=1, min=1, max=13)
randomIndex=round(x=randomNumber, digits=0)

#Explain what a loop does
print(students[randomIndex])

randomNumber=runif(n=1, min=1, max=13)
randomIndex=round(x=randomNumber, digits=0)

#What are we doing if we execute "ingredients=c('tomatoes', 'onions')"
print(students[randomIndex])


#Load some libraries

library(ggplot2)

## Read in the data (one file has ~5000 differentially expressed genes, other file has 250)
allDiff <- read.csv(file="./AllDifferentiallyExpressed.csv", header=TRUE, sep=",")


theseGoUp <- which(allDiff$fc_direction=="UP")
theseGoDown <- which(allDiff$fc_direction=="DOWN") 

print(length(theseGoUp))
print(length(theseGoDown))

averageFoldChange <- mean(allDiff$log2FoldChange)

print(averageFoldChange)


#Plots

#Scatter Plot
ggplot(allDiff, aes(x = log2FoldChange, y = -log10(pvalue))) +
  geom_point() 

#Histogram
ggplot(allDiff, aes(x = log2FoldChange)) +
  geom_histogram() 

