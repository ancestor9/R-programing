qnorm( p = c(.025, .975) )  # 95% 신뢰구간
qnorm( p = c(.15, .85) )    # 70% 신뢰구간
qnorm( p = c(.005, .995) )    # 99% 신뢰구간


library(lsr) # ciMean() function
who()
# Calculate the 95% confidence interval for the attendance variable
ciMean(x = afl$attendance )
# Calculate the 99% confidence interval for the attendance variable
confidence_interval <- ciMean(x = afl$attendance, con = 0.99)
# Print the confidence interval
confidence_interval


install.packages('sciplot')
library( sciplot ) # bargraph.CI() and lineplot.CI() functions
install.packages('gplots')
library( gplots ) # plotmeans() function
head(afl)

bargraph.CI( x.factor = year, # grouping variable
             response = attendance, # outcome variable
             data = afl, # data frame with the variables
             ci.fun= ciMean, # name of the function to calculate CIs
             xlab = "Year", # x-axis label
             ylab = "Average Attendance" # y-axis label
             )
lineplot.CI( x.factor = year, # grouping variable
             response = attendance, # outcome variable
             data = afl, # data frame with the variables
             ci.fun= ciMean, # name of the function to calculate CIs
             xlab = "Year", # x-axis label
             ylab = "Average Attendance" # y-axis label
             )
plotmeans( formula = attendance ~ year, # outcome ~ group
           data = afl, # data frame with the variables
           n.label = FALSE # don't show the sample sizes
           )


# 실전문제
# Parameters
population_mean <- 10
population_sd <- 3
sample_size <- 36
value_of_interest <- 11
# Calculate the mean and standard deviation of the sample mean
sample_mean <- population_mean
sample_sd <- population_sd / sqrt(sample_size)
# Calculate the z-score
z <- (value_of_interest - sample_mean) / sample_sd
z
# Calculate the probability using the standard normal distribution
probability <- 1 - pnorm(z)
# Print the probability
cat("The probability that the lifetime of 36 newly produced light bulbs is more than 11 months:",
    probability)

# Sample weights of 7 sugar bags
weights <- c(51, 51,58, 60, 62, 47, 54, 59, 53)
# Step 1: Calculate the sample mean
sample_mean <- mean(weights)
sample_mean
# Step 2: Calculate the sample variance
sample_variance <- var(weights)
sample_variance
# Step 3: Calculate the standard error of the mean
standard_error <- sqrt(sample_variance / length(weights))
# Step 4: Determine the critical value (for n-1 degrees of freedom)
critical_value <- qt(0.975, df = length(weights) - 1)
# Step 5: Calculate the margin of error
margin_of_error <- critical_value * standard_error
# Step 6: Calculate the lower and upper bounds of the confidence interval
lower_bound <- sample_mean - margin_of_error
upper_bound <- sample_mean + margin_of_error
# Print the results
cat("Sample Mean:", sample_mean, "\n")
cat("Sample Variance:", sample_variance, "\n")
cat("95% Confidence Interval: [", lower_bound, ",", upper_bound, "]\n")