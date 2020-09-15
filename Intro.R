
 m <- matrix(1:6 ,  ncol= 2 , nrow= 3)
 m

m[,1]

m[1,]
#list 
 (person <- list("fares" ,  "ben" ,  "ayed"))
 (person <- list("fae",c("fares" , "chbini") , 1 , TRUE))

View(m)
View(person)


c <- c(1:100)
femme <- data.frame(weight=c( 54 , 52 ,52 , 65 ,45 ,85) , age=c(20 ,30 ,40,86,54,59) )

(q4 <- factor (c("Google", "Google" , "Tumblr"  , "Tumblr" , "Twitter")))
levels(q4)


q4 <- relevel(q4, ref="Twitter") 
q4
length(q4)

mtx <- matrix( c(39 , 66 ,13 ,66 ,168 ,28 ,13 ,28 ,5 ) ,  ncol=3 , nrow= 3 ,  byrow = TRUE )
mtx

df = data.frame(col1 = mtx[,1] ,col2 = mtx[,2] , col3 = mtx[,3])
df
as.data.frame(mtx)

(seq(1,3,  length.out = 10))




rep(1, 3)  # Répète trois fois la valeur 1

rep(1:2, 3) # Répète trois fois la séquence 1:2

rep(1:2, each = 3)

