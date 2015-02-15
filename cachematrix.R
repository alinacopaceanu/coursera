
## Assignment: Caching the Inverse of a Matrix

makeCacheMatrix <- function (x = matrix()) {

	## Creates a special matrix object that can cache its inverse

	i <- NULL
	set <- function (y) {
		x <<- y
		i <<- NULL
	}
	get <- function () x
	setinv <- function (inv) i <<- inv	
	getinv <- function () i
	list(set = set, get = get, setinv = setinv, getinv = getinv)

}

cacheSolve <- function (x,...) {

	## Returns a matrix that is the inverse of 'x'

	i <- x$getinv()
	if(!is.null(i)) {
		message("getting cached data")
		return (i)
	}
	data <- x$get()
	i <-solve(data, ...)
	x$setinv(i)
	i
}