## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  invmtx<-NULL;
  
  setmatrix <- function(y) {x <<- y;}
  getmatrix <- function() x;
  
  setinvmtx <- function(y) invmtx <<- y;
  getinvmtx <- function() invmtx;
  list(setmatrix = setmatrix, getmatrix = getmatrix, 
       setinvmtx = setinvmtx, getinvmtx = getinvmtx)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  iv <- x$getinvmtx()
  if(!is.null(iv)){ 
    message("getting cached data")
    return(iv)
  }
  data <- x$getmatrix()
  iv <- solve(data,...)
  x$setinvmtx(m)
  iv
}
