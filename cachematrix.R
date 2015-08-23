## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## function to return matrix that is defined in makeCacheMatrix
  stor_matr <- function() x
  ## set inverse i as NULL
  i <- NULL
  ## funtion that defines the inverse i as inv
  set_inv <- function(inv) i <<- inv
  ## function to return the inverse i
  get_inv <- function() i
  ## store the above 3 functions in a list
  list(stor_matr=stor_matr, set_inv = set_inv, get_inv=get_inv)
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x) {
  ## get inverse value from cache 
  i <- x$get_inv()
  ## checks to see if i is NULL, if not, returns value of i with message
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## gets matrix from cache
  data <- x$stor_matr()
  ## calculates inverse
  i <- solve(data)
  ## sets inverse in cache to i that has been calculated above
  x$set_inv(i)
  ## returns inverse
  i 
}
