
## makeCacheMatrix() is a function which calculates and put in cash the 
## value of the reverse of the input matrix
## input: a matrix
## output: a list of 4 objects "functions"
## setmatrix set the value the value of the matrix
## getmatrix get the value of the matrix
## setinversematrix set the value of the inverse matrix
## getinversematrix get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
        matrixinv <- NULL
        
        setmatrix<- function(y){
          
                x<<- y 

                matrixinv <<- NULL
        }
        
        
        getmatrix <- function() {
                x
        }
        
        setinversematrix <- function(inverse){
          
                matrixinv <<- inverse
        }
        
        
        getinversematrix <- function(){
          
               matrixinv
        }
        
        
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinversematrix = setinversematrix, 
             getinversematrix = getinversematrix)
        
}

## cacheSolve() takes a matrix and returns the inverse of the matrix

cacheSolve <- function(x, ...) {
      
        matrixinv <- x$getinversematrix()
        
        if(!is.null(matrixinv)) {
                message("getting cached data")
                return(vinv)
        }
 
        vmatrix<- x$getmatrix()
        
        matrixinv <- solve(vmatrix, ...)
        
         x$setinversematrix(matrixinv)

         matrixinv
}
