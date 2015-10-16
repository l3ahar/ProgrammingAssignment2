## In this assignment I'm trying to calculate the inverse of matrix. By caching the calculated values we can reduce the run time.

## This function stores in itself 4 functions to set and get matrix value and also set and get the inverse value
makeCacheMatrix<-function(x=matrix()){
        invv<-NULL
        set<-function(y){
                x<<-y
                invv<-NULL
        }
        get<-function() x
        setinverse<-function(inverse) invv<<-inverse
        getinverse<-function() invv
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

## By calling the previous function in this one we can either calculate the inverse or read it from cached value. We are using the subfunctions in the previous function for calculating what we want here.
cacheSolve<-function(x,...){
        invv<-x$getinverse()
        if(!is.null(invv)){
                message("getting cached data")
                return(invv)
        }
        data<-x$get()
        invv<-solve(data,...)
        x$setinverse(invv)
        invv
}
        
        