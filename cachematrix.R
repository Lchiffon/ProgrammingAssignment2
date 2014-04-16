## Put comments here that give an overall description of what your
## functions do


test<-function(x){
  ## it is a test function showing that 
  ## the symbol "<<-" is give the value to
  ## a variance in global Environment instead of 
  ## current enviroment
  a<<-x^2
  ## give a value to a in global environment
  x 
}

## Write a short comment describing this function

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


## Write a short comment describing this function

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
