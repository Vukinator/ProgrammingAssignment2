## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 i = NULL
  set = function(y) {
    x <<- y
    i <<- NULL
  } # setting the space for the matrix
  get = function() x # for recieving the matrix
  setinverse = function(inverse) i <<- inverse # for setting the inverse
  getinverse = function() i ### for getting the inverse
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    i = x$getinverse()
  if (!is.null(i)) { # condition
    return(i)
  }
  data = x$get()
  i = solve(data, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}

### when testing the programme, the matrix of yours always has to be sqauared

# TEST

# a= matrix(10:13, 2, 2)
# A= makeCacheMatrix(a)
# cacheSolve(A)
