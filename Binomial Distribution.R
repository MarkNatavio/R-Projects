# Assignment 1 - Mark Natavio
# -------------------------------------------------------------------------------------------------------------------
# Exercise 1

# • Generate 100 experiments of flipping 10 coins, each with a 30% probability
# A probability of 30% is P(H) = 0.3
rbinom(100,10,0.3)

# What is the most common number?
# The most common number was 3, however at times 4 is the most common number

# -------------------------------------------------------------------------------------------------------------------
# Exercise 2
# • If you flip 10 coins each with a 30% probability of coming up heads, what is the probability exactly 2 of them are heads?
dbinom(2,10,0.3)
# Ans: 0.2334744

# • Compare your simulation with the exact calculation.
#    P(H) = 30/100 = 0.3
#    P(H = 2) = 10C2 * P(H)^2 * P(T)^10-2
#             = 10!/[2!(10-2)] * (0.3)^2 * (1-0.3)^8
#             = 45 * 0.9 * 0.7^8 = 0.2334744405

# -------------------------------------------------------------------------------------------------------------------
# Exercise 3
# • Part a) use 10000 experiments and report the result.
flips <- rbinom(10000,10,.3)
mean(flips == 2)

# • Part b) use 100000000 experiments and report the result.
flips <- rbinom(100000000,10,.3)
mean(flips == 2)

# • Compare the result of part a and part b, with the exact calculation. What is your conclusion?
# The result of part a is 0.2354 and part b is 0.2335658. Both of this values are very similar.
# However, P(A) > P(B) because more tosses means that there are more chances for tails to show up (since P(T) > P(H))
# As a result, the result of part b will be further away from P(H) than the result of part a.

# -------------------------------------------------------------------------------------------------------------------
# Exercise 4
# • What is the expected value of a binomial distribution where 25 coins are flipped, each having a 30% chance of heads?
mean(flips <- rbinom(100000,25,0.3))
# Ans: E[H] is close to 7.50873

# • Compare your simulation with the exact calculation.
# p(x) = 25!/(x!(25-x)!) * 0.3^x * (1-0.3)^25-x
# E[H] = Σ xp(x) = 7.499999999
# The similation is very close to the exact calculation

# -------------------------------------------------------------------------------------------------------------------
# Exercise 5
# • What is the variance of a binomial distribution where 25 coins are flipped, each having a 30% chance of heads?
var(rbinom(100000,25,.3))

# • Compare your simulation with the exact calculation.
# Var[H] = E[X^2] - E[X]^2 = 61.4999999 - 56.2499999 = 5.25
# z = x^2
# p(z) = 25!/(z!(25-z)!) * 0.3^z * (1-0.3)^25-z
# E[X^2] = Σ x^2 * p(x^2) = 61.4999999
# E[X]^2 = 7.499999999^2 = 56.2499999
# The similation is very close to the exact calculation
