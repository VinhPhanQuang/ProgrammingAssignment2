## Put comments here that give an overall description of what your
## functions do

## Overall description:
## The following two functions are created as Assignment 2 of R Programming Course.
## User can input a square numerical matrix, then the two functions can 
## calculate the inverse of the matrix and store that result in a cache.

## Write a short comment describing this function

## makeCacheMatrix() creates a special matrix object that 
## can cache the inverse of the input matrix.
## The matrix input should be a numerical square matrix (i.e. n rows and n columns). 
## User need to declare a matrix before apply the makeCacheMatrix() function.
## For example, my_matrix <- matrix (c(1, 2, 3, 4), 2, 2)

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() { x }
	setinverse <- function(inverse) { m <<- inverse }
	getinverse <- function() { m }
	list(set = set, get = get, setinverse = setinverse , getinverse = getinverse)

}

## Write a short comment describing this function

## cacheSolve computes the inverse of the matrix that is returned by 
## the makeCacheMatrix function above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
     	m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
        
}
