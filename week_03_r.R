
Fibonacci <- c( 1,1,2,3,5,8,13 )
plot( Fibonacci )
plot( x = Fibonacci,
      main = "You specify title using the 'main' argument",
      sub = "The subtitle appears here! (Use the 'sub' argument for this)",
      xlab = "The x-axis label is 'xlab'",
      ylab = "The y-axis label is 'ylab'"
      )
hist( afl.margins ) # panel a
hist( x = afl.margins, breaks = 3 ) # panel b
hist( x = afl.margins, breaks = 0:116 ) # panel c

hist( x = afl.margins,
      main = "2010 AFL margins", # title of the plot
      xlab = "Margin", # set the x-axis label
      density = 10, # draw shading lines: 10 per inch
      angle = 40, # set the angle of the shading lines is 40 degrees
      border = "gray20", # set the colour of the borders of the bars
      col = "gray80", # set the colour of the shading lines
      labels = TRUE, # add frequency labels to each bar
      ylim = c(0,40) # change the scale of the y-axis
      )

stem(afl.margins)
stem( x = afl.margins, scale = .25 )
stem( x = afl.margins, width = 20 )
stem( x = afl.margins / 1000 )
hist( afl.margins )
sort(afl.margins)


boxplot( x = afl.margins, range = 100 )
boxplot( afl.margins )
afl.margins > 100
which(afl.margins > 100)
afl.margins[163]
afl.margins

load( "D:/R programing/R_data/aflsmall2.Rdata" )
who()   # version문제제
ls()
afl2
head(afl2)
boxplot( formula = margin ~ year,
         data = afl2
         )
ls()
clin.trial
head(clin.trial)
str(clin.trial)
summary(clin.trial)
aggregate(mood.gain ~ drug + therapy, data = clin.trial, FUN = mean)
aggregate(mood.gain ~ therapy + drug, data = clin.trial, FUN = mean)
boxplot( formula = mood.gain ~ drug + therapy,
         data = clin.trial
)
boxplot( formula = mood.gain ~ therapy+drug,
         data = clin.trial
)
ls()
parenthood
plot( x = parenthood$dan.sleep, # data on the x-axis
      y = parenthood$dan.grump # data on the y-axis
      )
plot( x = parenthood$dan.sleep,         # data on the x-axis
      y = parenthood$dan.grump,         # data on the y-axis
      xlab = "My sleep (hours)",        # x-axis label
      ylab = "My grumpiness (0-100)",   # y-axis label
      xlim = c(4,10),     
      # scale the x-axis
      ylim = c(30,100),                  # scale the y-axis
      pch = 20,                         # change the plot type
      col = "gray50",                   # dim the dots slightly
      frame.plot = FALSE                # don't draw a box
)
lines( x = c(4,9.5),   # the horizontal locations
       y = c(93,37),   # the vertical locations
       lwd = 2         # line width
)
library('car')
scatterplot( parenthood$dan.grump ~ parenthood$dan.sleep)
scatterplot( dan.grump ~ dan.sleep,
             data = parenthood,
             smooth = FALSE
)

pairs( x = parenthood ) #
cor(parenthood)
pairs( formula = ~ dan.sleep + baby.sleep + dan.grump,
       data = parenthood)             

pairs(clin.trial)

head(afl.finalists)
summary(afl.finalists)
freq <- tabulate( afl.finalists )
print(freq)
teams <- levels( afl.finalists )
print(teams)

barplot( height = freq ) # specifying the argument name (panel a)
barplot( height = freq, names.arg = teams ) # panel b
that, as per the following command...
barplot( height = freq, # the frequencies
         names.arg = teams, # the labels
         las = 2 # rotate the labels, default las=1
        )
