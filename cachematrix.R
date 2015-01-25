## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix.R 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

## R Parige 01/22/2015
##############################################

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("Getting the cached data")
    return(inv)
  }
  
  data <- x$get()
  inv_x <- solve(data)
  x$setinverse(inv_x)
  return(inv_x)
  
}
