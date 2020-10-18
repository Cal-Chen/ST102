
#### working directory ###
getwd() ## the current working directory
dir()## what's inside

## ways to change working directory
## 1 set by 'Session'
## put the data files in the working directory you set 


## Q3 #
?read.csv
lengths <- read.csv('lengths.csv',header=T,sep=",")
head(lengths)
class(lengths)

## frequency table ## 
num <- unique(lengths$Guess)
freq_num <-0 
for( i in 1:length(num)){
  freq_num[i] <- sum(lengths$Guess ==num[i] )
}
# sample size
n <- length(lengths$Guess)

freq_table <- cbind(num,freq_num,freq_num/n)
freq_table <-  cbind(freq_table,cumsum(freq_table[,3]))
colnames(freq_table) <- c('num','frequency','proportion','cumulative prop')
freq_table

## mean variance ##
mean_val <- sum(freq_table[,1]*freq_table[,2])/n
mean_val

variance <- (sum(freq_table[,1]^2 * freq_table[,2]) - n*mean_val^2)/(n-1)
standard_deviation <- sqrt(variance)
mean_val;variance;standard_deviation

## median
freq_table[,1][which(freq_table[,4] >= 0.5)[1]]


# Q4 #
mean(lengths$Guess);median(lengths$Guess)
var(lengths$Guess);sd(lengths$Guess)


## Q5 ##
# (a)
gss <- read.csv('gsseducation.csv',header=T)
head(gss)
hist(gss$EDUC,breaks=20)

# (b)
summary(gss$EDUC)
sd(gss$EDUC,na.rm=T)

attach(gss) 
hist(EDUC,breaks=20)
varnames <- c('EDUC','SPEDUC','PAEDUC','MAEDUC')
boxplot(EDUC,SPEDUC,PAEDUC,MAEDUC,names = varnames)

# any indication of homogamy (linear pattern)
plot(EDUC,SPEDUC)
plot(PAEDUC,MAEDUC)


## Additional exercise ##
#Q1
shareA <- c(0.113,0.125,0.13,0.12,0.122)
shareB <- c(0.074,0.07,0.112,0.133,0.221)
mean(shareA);mean(shareB)
sd(shareA);sd(shareB)


weight <- c(0.1,0.1,0.2,0.2,0.4)
weighted.mean(shareA,weight);weighted.mean(shareB,weight)


##Q3##
gss <- read.csv('gsseducation.csv',header=T)
attach(gss)
head(gss)


EDUCGROUP <- EDUC
EDUCGROUP[EDUC <= 8] <- 1
EDUCGROUP[8 < EDUC & EDUC <=12] <- 2
EDUCGROUP[12 < EDUC & EDUC < 16] <- 3


## write a function so that we can use repeatedly
edu_level <- function(x) {
  x[x <= 8] <- 1
  x[8 <x  & x <= 12] <- 2
  x[12 < x & x <=16] <- 3
  x[x > 16] <- 4
  return(x)
}

EDUCGROUP <- edu_level(EDUC)
PAEDUCGROUP <- edu_level(PAEDUC)

## 
educgroup <- table(PAEDUCGROUP,EDUCGROUP)

# apply the function over the table  by row
apply(educgroup,1,sum)

# show the proportion by row
prop.table(educgroup,1)


# # add a column 
# educgroup <- cbind(educgroup,apply(educgroup,1,sum))
# colnames(educgroup)[5] <- 'rowsum'
# educgroup




