

## This function creates a matrix and stores its inverse value


makeCacheMatrix <- function(mx = matrix()) {
        
        inv <- NULL

# This function sets the matrix value
        
        setmx <- function(y) {
                
                mx <<- y
                inv <<- NULL
        }
        
# This function returns the matrix

        getmx <- function() mx
                             
        
# This function sets the inverse value 

        setinv <- function(inverse){
                
         inv <<- inverse
         
        }
# This function returns the inverse 
         
        getinv <- function() {
                
                inv
                
        }
        
        list(set = setmx, get = getmx,
             setinv = setinv, getinv = getinv)
}



## cacheSolve() processes a matrix input variable and returns its inverse
## if the inverse of the matrix already exists then it returns it
## input: matrix 
## output: the inverse matrix 

cacheSolve <- function(mx, ...) {
        
        inv <- mx$getinv()
        
        if(!is.null(inv)) {
                
                message("Return the value of the inverse")
                
                return(inv)
        } else{
        
        inv <- solve(x$getmx(), ...)
        x$setinv(inv)
        
        return(inv)
        
        }

}
