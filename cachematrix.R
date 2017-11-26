## Put comments here that give an overall description of what your
## functions do
## My functions calculate the inverse of a matrix

## Write a short comment describing this function
## this function return a list and can be the former step of next function 

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## this function get the matrix before and solve it into its inverse matrix

cacheSolve <- function(x,...) {
  ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setsolve(m)
    m
  
}

##try below

m1<-matrix(1:4,nrow=2,ncol=2)
cachedm1<-makeCacheMatrix(m1)
cachesolvem1<-cacheSolve(cachedm1)

