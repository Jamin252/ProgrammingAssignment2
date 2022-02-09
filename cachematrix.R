## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(temp)
    {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(tempinv) inv <<- tempinv
    getinv <- function() inv
    list(
        set = set,
        get = get,
        setinv = setinv,
        getinv = getinv
    )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    result <- x$getinv
    if(!is.null(result))
    {
        print("Getting cached data")
        return(result)
    }
    data <- x$get
    result <- solve(data, ...)
    x$setinv(result)
    result
}
