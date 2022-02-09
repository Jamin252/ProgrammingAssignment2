## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#Return object that have set, get,set inverse,
## and get inverse method
makeCacheMatrix <- function(x = matrix()) {
    ## set initial inv to null
    inv <- NULL
    
    ##Set function
    set <- function(temp)
    {
        x <<- y
        m <<- NULL
    }
    ##get funtion that return the matrix
    get <- function() x
    ## set function that set the attribute inv
    setinv <- function(tempinv) inv <<- tempinv
    ## get function that get the value of attribute inv
    getinv <- function() inv
    list(
        set = set,
        get = get,
        setinv = setinv,
        getinv = getinv
    )
}


## Write a short comment describing this function


## This function allow user to get the inverse of the matrix x
## It will retrieve the result if the inverse is previously
## calculated. Otherwise, it will calculate the inverse and
## set the cache x's inv to the inverse calcuated and return the
## inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    ## get the inv from object x
    result <- x$getinv
    
    ##Check if the inv is null
    if(!is.null(result))
    {
        print("Getting cached data")
        return(result)
    }
    ## if it is null, get the matrix from the object
    data <- x$get
    
    ##solve for the inverse
    result <- solve(data, ...)
    ## set the inv to the new inverse result
    x$setinv(result)
    
    ##Return the result
    result
}
