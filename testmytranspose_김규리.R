source('mytranspose.r')

assertEquals = function(input, output){
  if (length(input) != length(output)){
    print('error: difference in lengths')
  }
  output = na.omit(output)
  input = na.omit(input)
  temp = sum(output == input)
  if (temp == length(input)){
    print('assertEquals test passed')
  } else {
    print('assertEquals test failed')
  }
}

myvar1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1 <-  matrix(NA, nrow=0, ncol=0)
myvar1 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1 <-  matrix(c(1,2), nrow=2, ncol=1)
assertEquals(t(myvar1),mytranspose(myvar1))

myvar2 <- c(1,2,NA,3)
myvar2 <- c(NA)
myvar2 <- c()
assertEquals(matrix(myvar2,ncol = 1),mytranspose(myvar2))

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)
assertEquals(t(mydata3),mytranspose(mydata3))

