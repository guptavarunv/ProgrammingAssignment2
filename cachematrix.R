## makeCacheMatrix sets and gets the matrix and its inverse
## cacheSolve contains the main caching functionality. It checks for the 
## existence of the inverse of a matrix and pulls the data accordingly

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y)
{
  x<<-y
  inv<<-NULL
}
get<-function() x

getinverse<-function() inv
setinverse<-function(inverse)
{
  inv<<-inverse
}
list(set =set ,get =get,getinverse =getinverse, setinverse =setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
inv<-x$getinverse()
if(!is.null(inv))
{
  message("getting the cached inverse matrix")
  return(inv)
}
data<-x$get()
inv<-solve(data)
x$setinverse(inv)
inv
}
