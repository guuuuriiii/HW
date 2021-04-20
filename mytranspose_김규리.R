mytranspose <- function(x) {
  if (is.null(dim(x))){
    x = matrix(x, nrow = 1, ncol = length(x))
  } 
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  for(i in 1:nrow(x)) {
    for(j in 1:ncol(x)) {
      y[j,i] <- x[i,j]
    }
  }
  return(y)
}
