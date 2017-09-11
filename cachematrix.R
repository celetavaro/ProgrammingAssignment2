## Author:      Jason Simmons
## Date:        04 September 2017
## Author:      Jason L. Simmons
## Assignment:  Programmming Assignment 2

## creates a matrix object that is capable of storing a cached inverse of the 
## matrix object.

makeCacheMatrix <- function(x = matrix()) {
    
    x_i <- NULL
    set <- function (y){ # constructor for matrix and (empty) inverse
        
        x <<- y
        x_i <<- NULL
    }
    get <- function() x # getter for matrix
    setinverse <- function(inverse) x_i <<- inverse # setter for inverse matrix
    getinverse <- function() x_i #getter for inverse matrix
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

## Returns the inverse of an invertible matrix.  Checks to see if inverse is
## cached first.  If not found in cache, inverse is calculated, set, and returned.

cacheSolve <- function(x, ...) {

    checkinv <- x$getinv()
    if(!is.null(checkinv)){
        message("getting cached data")
        return(checkinv)
    }
    # if not cached, get matrix, solve for inverse, set inverse, and return inverse
    mat <- x$get()
    inv <- solve(mat)
    x$setinverse(inv)
    inv
    
}
