# These functions work to first cache the inverse of a matrix
## then the function will check if the matrix is cached, and if not
##it will create the inverse of the matrix 

## makeCacheMatrix creates a matrix object and caches it's inverse

makeCacheMatrix <- function(x = matrix()) {
        matr <- NULL
        set <- function(y) {
                x <<- y
                matr <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) matr <<- solve
        getinverse <- function() matr
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## This function will first check for the cached matrix
## if it doesn't exist, it will create the inverse

cachesolve <- function(x, ...) {
        matr <- x$getinverse()
        if(!is.null(matr)) {
                message("getting cached data")
                return(matr)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(matr)
        matr
}
