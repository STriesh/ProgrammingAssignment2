# This function is able to cache potentially time-consuming 
# computations of the Inverse of a Matrix


##  This function creates a special 
##  "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  CacheMatrix <<-solve(x)         #cache the inverse of the Matrix
  #CacheMatrix
}


## This function computes the inverse of the special 
##"matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated 
##(and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    Inverse.Matrix<-solve(CacheMatrix) #calculate the inverse of of 
                                      #special Martix from makeCAcheMatrix
    
    if(identical(x,Inverse.Matrix)){
      CacheMatrix                #if current Matrix Inverse is in cache
                                # return the Cache Matrix
      
    } else {
      Inverse.Matrix<-solve(x) # if current Matrix Inverse not in cache
      Inverse.Matrix}         # return its inverse matrix
    
  
  }
  
  

