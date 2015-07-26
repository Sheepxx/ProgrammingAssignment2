## This is a function that can cashe the inverse of the matrix you put in.

## This is function is created by using the similar idea of the sample program. 
## It stores a matrix and in two steps, it produces the inverse of inverse of
## the original matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinverse<-function(inverse) m<<-inverse
  getinverse<-function()m
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


#This function stores the matrix we input so we can refer back later in the
#bigger environment

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
        ## Return a matrix that is the inverse of 'x'

