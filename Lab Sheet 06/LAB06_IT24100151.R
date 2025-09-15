getwd()
setwd('C:\\Users\\ketty\\OneDrive\\Desktop\\IT24100151')
getwd()

# Option A: use cumulative (gives P(X>=47))
1 - pbinom(46, size = 50, prob = 0.85)

# Option B: sum of pmf terms
sum(dbinom(47:50, size = 50, prob = 0.85))

# Probability exactly 15 calls
dpois(15, lambda = 12)


# Problem 1: Binomial (n=50, p=0.85)
n <- 50
p <- 0.85

# (i) distribution: Binomial(n=50, p=0.85)  -- note in comments
cat("Problem 1: X ~ Binomial(n=50, p=0.85)\n")

# (ii) P(X >= 47)
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
cat("P(X >= 47) = ", prob_at_least_47, "\n")

# Also show sum(dbinom(...)) for verification
prob_sum <- sum(dbinom(47:50, size = n, prob = p))
cat("Sum of dbinom(47:50) = ", prob_sum, "\n\n")


# Problem 2: Poisson (lambda = 12)
lambda <- 12
cat("Problem 2: X ~ Poisson(lambda = 12)\n")

# (iii) P(X = 15)
prob_eq_15 <- dpois(15, lambda = lambda)
cat("P(X = 15) = ", prob_eq_15, "\n")

