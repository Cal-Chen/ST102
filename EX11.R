
# EX 11 Q1

x_bar <- 0
for(i in 1:1e5){
  sample_pois <- rpois(n = 100,lambda = 5)
  x_bar[i] <- mean(sample_pois)
}

mean(x_bar);5
var(x_bar);5/100
hist(x_bar) # normal ? 


# exponential 

x_bar <- 0
for(i in 1:1e5){
  sample_exp <- rexp(n = 100, rate =2)
  x_bar[i] <- mean(sample_exp)
}

mean(x_bar);1/2
var(x_bar);1/400
hist(x_bar,breaks=50) # normal ? 

