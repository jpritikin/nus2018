# Load some data into memory
i1 <- read.csv("iris1.csv")

# Digression: We use <- for assignment (instead of =) because R was
# designed before the moon landings.

# Show the first few rows in the data frame
head(i1)

# A data frame is somewhat like a list and somewhat like a matrix.
# It's a list of vectors (maybe of different types)
# but all the same length.
str(i1)

# str displys the structure of arbitrary R objects
str(1)
str(1:10)
str("hello")
str(list("hello",1:10))

# Everything is a vector
length(10)
length("abc")
length(list(10,"abc"))
length(1:10)

# Back to iris data
head(i1)

# Examine a column
i1$Sepal.Length

# How many rows does i1 contain?
# CODE

# What's the mean?
mean(i1$Sepal.Length)

# Show mean Petal.Length Petal.Width
# CODE

# More descriptive stats
summary(i1$Sepal.Length)

# Show descriptive stats for Petal.Length Petal.Width
# CODE

# Pick out one value
i1[10, 'Sepal.Length']

# List the names of the columns
colnames(i1)

# For Excel, save as CSV. Did this work too?
i2 <- read.csv("iris2.csv")
head(i2)

library(foreign)
bf <- read.spss("BodyFat.sav")
str(bf)

# Is it a data frame?
is(bf, "data.frame")

# Turn it into a data.frame
bf <- as.data.frame(bf)
is(bf, "data.frame")

# Is it a data.frame now?
str(bf)
head(bf)

# Is there another way? Check documentation
?read.spss
#CODE
