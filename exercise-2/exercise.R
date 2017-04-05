# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength

# Pass two vectors of different length to your `CompareLength` function
CompareLength <- function(vec1, vec2) {
  return ( length(vec1) - length(vec2) )
}

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2) {
  which.is.bigger <- CompareLength(vec1, vec2)
  
  if (which.is.bigger > 0) {
    return (paste("Your first vector is longer by ", which.is.bigger, " elements", sep = "") )
  } else if (which.is.bigger < 0) {
    return (paste("Your second vector is longer by ", abs(which.is.bigger), " elements", sep = "") )
  } else {
    return ( paste("Vectors are the same length ", length(vec1), sep="") )
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3), c(1,2))
DescribeDifference(c(1,2), c(1,2,3,4,5))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifferenceBetter <- function(vec1, vec2) {
  # Used stackoverflow help http://stackoverflow.com/questions/5754367/using-substitute-to-get-argument-name-with
  which.is.bigger <- CompareLength(vec1, vec2)
  vec1.name <- deparse(substitute(vec1))
  vec2.name <- deparse(substitute(vec2))
  
  if (which.is.bigger > 0) {
    return (paste(vec1.name, " is longer by ", which.is.bigger, " elements", sep = "") )
  } else if (which.is.bigger < 0) {
    return (paste(vec2.name, " is longer by ", abs(which.is.bigger), " elements", sep = "") )
  } else {
    return ( paste("Vectors are the same length of ", length(vec1.name), sep="") )
  }
}

DescribeDifferenceBetter(c(1,2,3), c(1,2))
DescribeDifferenceBetter(c(1,2), c(1,2,3,4,5))
