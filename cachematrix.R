## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


##Function to cache matrix inverse 
makeCacheMatrix <- function(x = matrix()) {
      invertible<-NULL
      set <-function(y){
        x<<-y
        invertible<<-NULL
      }
      get<-function()(x)
      setinverse<-function(inverse){invertible<<-inverse}
      getinverse<-function(){invertible}
      list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
      
}


## Write a short comment describing this function

##This function computes the inverse of the special "matrix"
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invertible<<-x$getinverse()
        if(!is.null(invertible)){
          message("The cache data was get")
          return(invertible)
        }
        mat <- x$get()
        invertible<-solve(mat, ...)
        x$setinverse(invertible)
        invertible
      
}
