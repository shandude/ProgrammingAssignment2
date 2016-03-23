## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores a matrix X
## cacheSolve shows the inverse of a matrix

## Write a short comment describing this function
## makeCacheMatrix uses scoping rules and stores matrices in memory

makeCacheMatrix <- function(X = matrix()) {
inverse <- NULL
set <- function(Y){X <<- Y
	inverse <<- NULL
	}
get <- function() X
setinverse <- function(Inverse) inverse <<- Inverse
getinverse <- function() inverse
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## Write a short comment describing this function

## Computes the inverse of the special "matrix" returned by makeCacheMatrix



inverse <- X$getinverse()
if(!is.null(inverse)){
	message("matrix is in memory")
	return(inverse)
	}
message("inverse is not in memory so the inverse  will be calculated")
data <- X$get()
inverse <- solve(data, ...)
X$setinverse(inverse)
inverse
}

##That's it
