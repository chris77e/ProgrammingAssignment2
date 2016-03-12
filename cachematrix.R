## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## return the variable list with the funtions
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse 
  getinv <- function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse (inv) of 'x'
  inv <- x$getinv()
  ##check if inv has a value
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  ##else calculate the matrix inverse
  mat.data <- x$get()
  inv <- solve(mat.data, ...)
  x$setinv(inv)
  inv
}
