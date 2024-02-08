binom.test( x=62, n=100, p=.5 )

# Parameters
n <- 100  # Number of trials (number of people selected)
p <- 0.62  # Probability of success (probability of liking butterscotch ice cream)

# Generate binomial distribution
x <- 0:n  # Possible number of successes
prob <- dbinom(x, size = n, prob = p)  # Probability mass function (PMF) values

# Plot the binomial distribution
barplot(prob, names.arg = x, main = "Binomial Distribution",
        xlab = "Number of People Liking Butterscotch Ice Cream",
        ylab = "Probability", col = "lightblue")

# Find the x value corresponding to the p-value
p_value = 0.02098
x_value <- qbinom(p_value, size = n, prob = p, lower.tail = FALSE)
# Print the x value
cat("x value for p-value", p_value, "is", x_value)
qbinom(p_value, size = n, prob = p, lower.tail = TRUE)

# 신뢰구간 구하기 
binom.test(x = n * p, n = n, conf.level = 0.9995804)    # ci = 100 - 0.02098*2(양측검정)

# Confusion Matrix와 제1종 2종 오류류
# Actual values
actual <- c("cat", "cat", "cat", "cat", "tiger", "tiger", "tiger", "cat", "cat")
# Predicted values
predicted <- c("cat", "cat", "cat", "tiger", "cat", "tiger", "tiger", "cat", "tiger")
# Create confusion matrix
confusion_matrix <- table(actual, predicted)
# Print the confusion matrix
print(confusion_matrix)



