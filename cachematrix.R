## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inv <- NULL
  set <- function(y) {
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) Inv <<- solve
  getInverse <- function() Inv
    list(set = set, get = get,
       setInverse= setInverse,
       getInverse= getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        Inv <- x$getInverse()
        if(!is.null(Inv)) {
                message("Matrix is solved and exists")
                return(Inv)
        }
        message("This matrix is not solved before")
        data <- x$get()
        Inv <- solve(data, ...)
        x$setInverse(Inv)
}
