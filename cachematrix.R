## Author:      Jason Simmons
## Date:        04 September 2017


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    inv <- matrix()
    set <- function (y){ # setter for matrix
        
        x <<- y
        inv <<- matrix()
    }
    get <- function() x # getter for matrix
    setinv <- function(inverse) inv <<- inverse # setter for inverse matrix
    getinv <- function() inv #getter for inverse matrix
    list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
