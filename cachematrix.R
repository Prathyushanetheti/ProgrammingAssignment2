
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Function: makeCacheMatrix - It typically produces a remarkable "matrix" item. The inverse of the matrix object can be cached by this "matrix" object.

makeCacheMatrix <- function(x = matrix()) {
         p <- NULL
    set <- function(y) {
        x <<- y
        p <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) p <<- inverse
    getinverse <- function() p
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)


}


## Write a short comment describing this function

## Function: The cacheSolve function determines the inverse of the special "matrix" object that the aforementioned "makeCacheMatrix" command returns.

## The answer must be recovered from the cache matrix if the matrix is identical in which case the inverse has already been calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        p <- x$getinverse()
    if(!is.null(p)) {
        message("getting cached data")
        return(p)
    }
    matrix <- x$get()
    p <- solve(matrix, ...)
    x$setinverse(p)
    d

}
