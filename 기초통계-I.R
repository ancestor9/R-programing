# 데이터 불러오기
load("aflsmall.rda")
# The "lsr" package (Learning Statistics with R) is designed to accompany the textbook "Learning Statistics with R" by Danielle Navarro. 
# It provides a collection of functions and datasets that are useful for learning and teaching statistics using R.
library(lsr)

who()
# 데이터 출력
print(afl.margins)
# 데이터프레임의 home.score 컬럼의 값을 Histogram으로 확인(시각화, 가독성성)
hist(afl.margins$home.score)
hist(afl.margins$away.score)

# 데이터프레임 다운로드드
install.packages("openxlsx")
library(openxlsx)
write.xlsx(afl.margins, "D:/R programing/data/data.xlsx")

# 홈그라운드 경기의 점수 처음 5개의 평균점수
print(afl.margins)
(104+62+104+74+128)/5
afl.margins$home.score[0:5]
sum(afl.margins$home.score[0:5])
sum(afl.margins$home.score[0:5])/5
mean(afl.margins$home.score[0:5])
mean(x = afl.margins$home.score[0:5])
# 홈그라운드 경기의 점수 전체 평균점수
mean(afl.margins$home.score)

# 중앙값(Median)
sort(afl.margins$home.score)
median(afl.margins$home.score)

# Trimmed mean
dataset <- c( -15,2,3,4,5,6,7,8,9,12 )
mean( x = dataset )
mean( x = dataset, trim = .1)
dataset[2:10]
mean(dataset[2:10])
mean( x = afl.margins$home.score, trim = .05)

# Mode
print( afl$away.team)
table(afl$away.team)
modeOf( x = afl$away.team )
maxFreq( x = afl$away.team )

modeOf( x = afl$home.score )
maxFreq( x = afl$home.score )

# 5.2. Measures of variability
# 5.2.1 Range
a <- afl$home.score 
max(a)
min(a)
range(a)

# 5.2.2 Interquartile range
quantile( x = a, probs = .5)
quantile( x = a, probs = c(.25,.75) )
quantile( x = a, probs = .75) - quantile( x = a, probs = .25) 
IQR( x = x )
quantile( x = a, probs = .75)+1.5*IQR( x = x )

# 5.2.3 Mean Abosolute Diviation
X <- c(56, 31,56,8,32)      # enter the data
X.bar <- mean( X )          # step 1. the mean of the data
AD <- abs( X - X.bar )      # step 2. the absolute deviations from the mean
AAD <- mean( AD )           # step 3. the mean absolute deviations
print( AAD )                # print the results
aad(X)

# 5.2.4 Variance
( 376.36 + 31.36 + 376.36 + 817.96 + 21.16 ) / 5
mean( (X - mean(X) )^2)
var(X)
sum( (X-mean(X))^2 ) / 4

(afl$home.score - mean(afl$home.score))^2
mean((afl$home.score - mean(afl$home.score))^2)
var(afl$home.score)

# 5.2.5 Standard deviation
sd(afl$home.score)
sd(afl$home.score)^2

hist(afl$home.score)
mean(afl$home.score)
mean(afl$home.score) + 1.96*sd(afl$home.score)
mean(afl$home.score) - 1.96*sd(afl$home.score)

# 5.2.6 Median absolute deviation
afl$home.scores - mean(afl$home.score)
mean( abs(afl$home.score - mean(afl$home.score)) )
median( abs(afl$home.score - median(afl$home.score)) )
