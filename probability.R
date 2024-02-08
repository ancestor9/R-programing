# Define the possible outcomes of the die
die_outcomes <- 1:6
# Generate 100 random dice rolls
dice_rolls <- sample(die_outcomes, 100, replace = TRUE)
# View the results
dice_rolls
# Calculate the frequencies of each outcome
freq_table <- table(dice_rolls)
freq_table
# Calculate the probabilities of each outcome
probabilities <- prop.table(freq_table)
probabilities
hist(dice_rolls, xlab = "The number of dice", main = "Histogram")

# 모집단과 샘플의 의미
population <- 140:220                    # 전체인구의 신장
sample <- sample(population, 100, replace = TRUE)
sample
freq_table <- table(sample)
freq_table
probabilities <- prop.table(sample)
probabilities
hist(sample, xlab = "신장(키)", main = "Histogram")

set.seed(1)
# Generate random samples from a normal distribution
population <- rnorm(100, mean = 170, sd = 15)

# Create a histogram
hist(population, breaks = "FD", 
     xlim = c(140, 200), 
     main = "Histogram of Random Sampling from Normal Distribution", 
     xlab = "신장(키)")

# 베르누이 확률분포포
set.seed(1)
# Parameters
n <- 100  # Number of samples
p <- 0.3  # Probability of success
# Generate random samples
samples <- rbinom(n, size = 1, prob = p)
# Print the generated samples
print(samples)
hist(samples)



# Create a vector of data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 5)

dice_rolls
# Plot the histogram
hist(data, xlab = "Values", main = "Histogram")
# Calculate the probabilities
probabilities <- prop.table(table(data))
probabilities

# 이항분포
dbinom(x = 1, size = 1, prob = 1/2 ) # 동전의 경우 1번 던져서 앞 or 뒷뒷면 나올 확률
dbinom(x = 1, size = 1, prob = 1/6 ) # 주사위를 1번 던져서 특정 번호가 1번 나올 확률

dbinom( x = 4, size = 20, prob = 1/6 )
dbinom( x = 4, size = 200, prob = 1/6 )
# 로또 벼락맞을 확률
dbinom( x = 1, size = 100000, prob = 1/8000000 )

# 실전문제
dbinom( x= 4, size = 10, prob = 0.3)
pbinom( q= 4, size = 10, prob = 0.3)

# 주사위 20회 시행 이항분포
dbinom( x= 4, size = 20, prob = 1/6) 
pbinom( q= 4, size = 20, prob = 1/6)
qbinom( p = 0.75, size = 20, prob = 1/6 )
rbinom( n = 100, size = 20, prob = 1/6 )
x <- rbinom( n = 100, size = 20, prob = 1/6 )
hist(x)

#정규분포
s1 <- rnorm(1000, mean = 4, sd = 1)             
s2 <- rnorm(1000, mean = 7, sd = 1)             
hist(s1)
hist(s2)
# Set up a multi-panel plot
par(mfrow = c(1, 2))  # 1 row, 2 columns
# Histogram of s1
hist(s1, main = "Histogram of s1")
# Histogram of s2
hist(s2, main = "Histogram of s2")

# 정규분포
x <- rnorm(1000, mean = 0, sd = 1) 
hist(x)

dnorm(0, mean = 0, sd = 1)  # Prints the probability density
pnorm(0, mean = 0, sd = 1)  # Prints the cumulative probability
qnorm(0.5, mean = 0, sd = 1) # Prints the quantile value

# 실전문제
pnorm(1,mean=0,sd=1)-pnorm(-1,mean=0,sd=1)
pnorm(2,mean=0,sd=1)-pnorm(-2,mean=0,sd=1)
pnorm(-1,mean=0,sd=1)
pnorm(0,mean=0,sd=1)-pnorm(-1,mean=0,sd=1)

# other distribution
normal.a <- rnorm( n=10000, mean=0, sd=1 )
print(normal.a)
hist(normal.a)
normal.b <- rnorm( n=10000 ) # another set of normally distributed data
normal.c <- rnorm( n=10000 ) # and another!

chi.sq.3 <- (normal.a)^2 + (normal.b)^2 + (normal.c)^2
hist( chi.sq.3 )

scaled.chi.sq.3 <- chi.sq.3 / 3
normal.d <- rnorm( n=1000 ) # yet another set of normally distributed data
t.3 <- normal.d / sqrt( scaled.chi.sq.3 ) # divide by square root of scaled chi-square to get t
hist(t.3 )



chi.sq.20 <- rchisq( 1000, 20) # generate chi square data with df = 20...
scaled.chi.sq.20 <- chi.sq.20 / 20 # scale the chi square variable...
F.3.20 <- scaled.chi.sq.3 / scaled.chi.sq.20 # take the ratio of the two chi squares...
hist( F.3.20 ) # ... and draw a picture






