## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inverse<NULL
  set <- function(Y){
    X <<- Y
    inverse <<- NULL 
  }
  get <- function() X
  setInverse <- function(inverse) Inverse <<- inverse
  getInverse <- function() Inverse
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

# This function assumes that the matrix is always invertible.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}


