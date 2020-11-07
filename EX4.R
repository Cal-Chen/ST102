# EX4 additional exercise 4

# (a) 
A2 <- choose(4,2)*choose(48,3) + choose(4,3)*choose(48,2) + choose(4,4)*choose(48,1)
# A22 <- choose(52,5) - choose(4,1)*choose(48,4) - choose(4,0)*choose(48,5)

A1 <- A2 + choose(4,1)*choose(48,4)
# A12 <- choose(52,5) - choose(4,0)*choose(48,5) 

A2/A1


# (b)
B <- choose(2,1)*choose(50,4) + choose(2,2)*choose(50,3)

BA2 <- choose(2,1)*choose(2,1)*choose(48,3) + 
       choose(2,1)*choose(2,2)*choose(48,2) + choose(2,2)*choose(50,3)

# BA22 <- choose(2,1)*choose(2,1)*choose(48,3) + choose(2,1)*choose(2,2)*choose(48,2) + 
#         choose(2,2)*choose(2,0)*choose(48,3) + choose(2,2)*choose(2,1)*choose(48,2) + 
#         choose(2,2)*choose(2,2)*choose(48,1)


BA2/B

#(c)
S <- choose(1,1)*choose(51,4)

SA2 <- choose(3,1)*choose(48,3) + choose(3,2)*choose(48,2) + choose(3,3)*choose(48,1)

SA2 / S


