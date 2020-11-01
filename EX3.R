
#EX3
#Q5
pi <- c(1/12,1/9,5/36,5/36,1/9,1/12)
2/9 + sum(pi^2/(pi + 1/6))


#Additional exercise 3
# Q3

# define the probability function
fish <- function(N) choose(50,3)*choose(N-50,47)/choose(N,50)

# generate a integer sequence
N <- 50:2000

## plug in the N to obtain the corresponding probabilities
fish_N <-  fish(N)

# plot the graph with regard to N
# 'type' arguments is to define the plot to be a 'line' plot
plot(N, fish_N,type='l')

# Find the maximum probability
max(fish_N)

# Find the corresponding N
N[which.max(fish_N)]


