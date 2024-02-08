library( lsr )
load( "D:/R programing/R_data/randomness.Rdata" )
who( TRUE )
head( cards )
observed <- table( cards$choice_1 )
observed
probabilities <- c(clubs = .25, diamonds = .25, hearts = .25, spades = .25)
probabilities
N <- 200 # sample size
expected <- N * probabilities # expected frequencies
expected
observed - expected
(observed - expected)^2
(observed - expected)^2 / expected
sum( (observed - expected)^2 / expected )

qchisq( p = .95, df = 3 )
pchisq( q = 8.44, df = 3, lower.tail = FALSE )

goodnessOfFitTest( cards$choice_1 )

# 13.1.1 The inference problem that the test addresses
load( "D:/R programing/R_data/zeppo.Rdata" )
grades
mean(grades)
sample.mean <- mean( grades )
print( sample.mean )
mu.null <- 67.5         # 귀무가설 평균이 67.5
sd.true <- 9.5
N <- length( grades )
N
sem.true <- sd.true / sqrt(N)
sem.true
z.score <- (sample.mean - mu.null) / sem.true
z.score
upper.area <- pnorm( q = z.score, lower.tail = FALSE )
upper.area
lower.area <- pnorm( q = -z.score, lower.tail = TRUE )
lower.area
p.value <- lower.area + upper.area
p.value
