load( "D:/R programing/R_data/nightgarden.Rdata" )
ls()
speaker
utterance
table( speaker )
table( utterance )
table( speaker, utterance )

itng <- data.frame( speaker, utterance )
itng
xtabs( formula = ~ speaker + utterance, data = itng )
itng.table <- table( itng ) 
itng.table
prop.table( x = itng.table )            
prop.table( x = itng.table, margin = 1)
prop.table( x = itng.table, margin = 2)
some.data <- c(1,2,3,1,1,3,8,8,8)
tabulate( some.data )

load( "D:/R programing/R_data/likert.Rdata" )
likert.raw
mean(likert.raw)
likert.centred <- likert.raw - mean(likert.raw)
likert.centred
mean(likert.centred)
opinion.strength <- abs( likert.centred )
opinion.strength
opinion.dir <- sign( likert.centred )  #  sign function
opinion.dir

df <- data.frame( likert.raw ) # create data frame
df
df$likert.centred <- df$likert.raw - 4 # create centred data
df$opinion.strength <- abs( df$likert.centred ) # create strength variable
df$opinion.dir <- sign( df$likert.centred ) # create direction variable
df # print the final data frame:


10**3
log10(1000)
log(3.14)
exp(1)

x <- c(1:100)
plot(x)
plot(log10(x))
plot(logExp(x))

is.MP.speaking <- speaker == "makka-pakka"
is.MP.speaking
utterance
utterance[ is.MP.speaking ]    
utterance[ speaker == "makka-pakka" ]

utterance %in% c("pip","oo")
speaker[ utterance %in% c("pip","oo") ]

utterance
speaker
speech.by.char <- split( x = utterance, f = speaker )
speech.by.char
speech.by.char$`makka-pakka`[1]
ls()

df <- subset( x = itng, # data frame is itng
              subset = speaker == "makka-pakka", # keep only Makka-Pakkas speech
              select = utterance ) # keep only the utterance variable
print( df )


load( "D:/R programing/R_data/nightgarden2.Rdata" )
garden
garden[ 4:5, 1:2 ]
garden[ c(4,5), c(1,2) ]
garden[ c("case.4", "case.5"), c("speaker", "utterance") ]
garden[ 4:5, c("speaker", "utterance") ]
is.MP.speaking <- garden$speaker == "makka-pakka"
is.MP.speaking
garden[ is.MP.speaking, c("speaker", "utterance") ]

garden[ , 1:2 ]
garden[ 4:5, ]
garden[ , -3 ]
garden[ -3, ]

garden
garden[ 5, ]
garden[ , 3 ]
garden[ , 3, drop = FALSE ]

print.default( garden )
garden
print(garden)
library('lsr')
sortFrame( garden, speaker, line)
sortFrame( garden, speaker, -line)
#7.6.4 Binding vectors together
cake.1 <- c(100, 80, 0, 0, 0)
cake.2 <- c(100, 100, 90, 30, 10)
cake.df <- data.frame( cake.1, cake.2 )
cake.df
t(cake.df)
class(t(cake.df))

fibonacci <- c( 1,1,2,3,5,8 )
rbind( fibonacci, fibonacci, fibonacci )
rowCopy( x = fibonacci, times = 3 )

load("D:/R programing/R_data/repeated.Rdata")
who()  # librabry('lsr') 이후에
who(TRUE)
drugs
drugs.2 <- wideToLong( data = drugs, within = "drug" )
drugs.2
longToWide( data=drugs.2, formula= WMC+RT ~ drug )
paste( "hello", "world", sep = "." )
