## Author:      Jason Simmons
## Date:        04 September 2017


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    x_i <- NULL
    set <- function (y){ # constructor for matrix and inverse
        
        x <<- y
        x_i <<- NULL
    }
    get <- function() x # getter for matrix
    setinv <- function(inverse) x_i <<- inverse # setter for inverse matrix
    getinv <- function() x_i #getter for inverse matrix
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
