## It was a R function which compute the inverse of a matrix
## In another hand,this function can chache the inverse of the matrix
## which the R has computed before.


test<-function(x){
  ## it is a test function showing that 
  ## the symbol "<<-" is give the value to
  ## a variance in global Environment instead of 
  ## current enviroment
  a<<-x^2
  ## give a value to a in global environment
  x 
}

## the first function makes a list of functions can be used to cache the 
## inverse of the matrix
## for example:if you want to compute a matrix's inverse, 
## use"y<-makeCacheMatrix(x)"  to build this list.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following function calculates the inverse of the list created with the above function. 
## However, it first checks to see if the inverse has already been calculated. 
## If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the matrix,and save it to the cache.
 cacheSolve <- function(x, ...) {
    
  m <- y$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- y$get()
  m <- solve(data, ...)
  y$setinverse(m)
  m     ## Return a matrix that is the inverse of 'x'
}
