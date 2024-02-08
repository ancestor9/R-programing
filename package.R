# 4.2 Installing and loading packages
# A package must be installed before it can be loaded.
# A package must be loaded before it can be used.
exists( "read.spss" )
library("foreign")
exists( "read.spss" )
detach("package:foreign", unload=TRUE)
exists( "read.spss" )


library( Matrix )
library(car)
print(car)
install.packages("psych")
getwd()
library(psych)
library(lsr)

objects()
library(lsr)
who()


load("D:/R programing/data/aflsmall.Rdata")
who()
