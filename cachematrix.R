## The two functions below compute and cache the inverse of an invertible matrix

## Store the matrix parameter and its solve

makeCacheMatrix <- function(x = matrix()) {
        result <- NULL
        set <- function(y){
                x <<- y
                result <<- NULL
        }
        get <- function(){
                x
        }
        setSolve <- function(solve){
               result <<- solve 
        }
        getSolve <- function(){
                result
        }
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## Take result from makeCacheMatrix(). Calculate solve if it is not done yet.
## Otherwise, return the cached solve value.

cacheSolve <- function(x) {
        sol <- x$getSolve()
        if (!is.null(sol)){
                message("getting cached data")
                return(sol)
        }
        data <- x$get()
        sol <- solve(data)
        x$setSolve(sol)
        sol
}
