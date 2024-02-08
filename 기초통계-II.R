# 5.4 Getting an overall summary of a variable
library(lsr)
who()
print(afl.margins)
summary(afl.margins)
blowouts <- afl.margins > 50
blowouts
summary( object = blowouts )
f2 <- as.character( afl.finalists )
summary( object = f2 )

# 5.4.2 "Summarising" a data frame
load( "D:/R programing/R_data/clinicaltrial.Rdata" )
who()
who(TRUE)
summary( clin.trial )
describeBy(x=clin.trial, group=clin.trial$therapy )
install.packages("psych")
library(psych)
print(clin.trial)
describeBy(x=clin.trial, group=clin.trial$therapy )

# 5.4.3 "Describing" a data frame
describe( x = clin.trial )

# 5.5 Descriptive statistics separately for each group
describeBy( x=clin.trial, group=clin.trial$therapy )
by( data=clin.trial, INDICES=clin.trial$therapy, FUN=describe )
by( data=clin.trial, INDICES=clin.trial$therapy, FUN=summary )
print(clin.trial)
aggregate( mood.gain ~ drug + therapy,  # mood.gain by drug/therapy combination
           data = clin.trial,                     # data is in the clin.trial data frame
           FUN = mean                             # print out group means
)

aggregate( mood.gain ~ drug + therapy, clin.trial, sd )

# 5.6 Standard scores
print(afl.margins)
hist(afl.margins)
mean(afl.margins)
sd(afl.margins)
afl.margins - mean(afl.margins)
mean(afl.margins - mean(afl.margins))
var(afl.margins - mean(afl.margins))
sc <- (afl.margins - mean(afl.margins))/sd(afl.margins)
mean(sc)
sd(sc)
hist(sc)
pnorm(-3)
pnorm(0)
pnorm(1.96)

# 5.7 Correlations
load( "D:/R programing/R_data/parenthood.Rdata" )
who(TRUE)
parenthood
describe( parenthood )
cor(parenthood)

# library
library(ggplot2)
head(parenthood)
# basic scatterplot
ggplot(parenthood, aes(x=dan.sleep, y=baby.sleep)) + 
  geom_point()
ggplot(parenthood, aes(x=dan.sleep, y=dan.grump)) + 
  geom_point()