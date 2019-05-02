## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        matr <- NULL
        set <- function(y) {
                x <<- y
                matr <<- NULL
}
        get <- function() x
        setmean <- function(mean) matr <<- mean
        getmean <- function() matr
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

## Write a short comment describing this function

cachemean <- function(x, ...) {
        matr <- x$getmean()
        if(!is.null(matr)) {
                message("getting cached data")
                return(matr)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(matr)
        matr
}
