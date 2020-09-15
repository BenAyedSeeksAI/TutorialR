tva <- 1.5


#if clause
if( tva >=1.5){
  tvap <- 0.19
}else{
  tvap <- 0.13
}
tvap
#casting 
value <- as.integer(tva)
value


for (i in 1:5){
  print(tva)
}
i<-0
s<-0
n<-8
while (i<=n){
  s <- s+ i^2
  i <- i+1
}
s

#exercice
c <- c(1,18,2,1,5,2,6,1,12,3,13,8,20,1,7,7,4,14,10)
c[2]
c[1:5]
c[c>8]
c[-c(6,10,12)]

#exercice

x<- matrix(sample(1:100,70),7,10)
x[3,4]
x[6,]
x[,c(1,4)]
x[which(x[,1]>50),]

c1<-c(c(1))
data <-matrix(1:6,2,3)
data

x1<- list(1:5, data=matrix(1:6, nrow=2), rep(0,3),test=rep(FALSE,  4))
#b 
labels(x1)
x1$names <- list('a','c','xe','s')
names
#c
length(x1$test)
mode(x1$test)
mode(x1[[4]])
length(x1[[4]])
#d
dim(x1$data)
dim(x1[[2]])
#e 
x1$data[2:3]
#f
x1[[3]]<-list(3:8)
file <- x1$data
