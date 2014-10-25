#code for intro in stats
#page 189

library(lsr)
library( psych )
library(car)
setwd("~/Documents/R/Intro_stat/")

load( "aflsmall.Rdata" )
#load( "aflsmall2.Rdata" )
#load( "clinicaltrial.Rdata" )
load( "parenthood.Rdata" )
load( "effort.Rdata" )
load("work.Rdata")


#aggregate( formula = mood.gain ~ drug + therapy, data = clin.trial, FUN = mean)

####Plotting

#Fibonacci <- c( 1,1,2,3,5,8,13 )
plot(x = Fibonacci, main = "The first 7 Fibonacci numbers", xlab = "Position in the sequence", ylab = "The Fibonacci number", font.main = 1, cex.main = 1, font.axis = 2, col.lab = "gray50", type = "o", col = "blue", pch = 20, lty = "dotted", frame.plot = FALSE, axes = TRUE)

#plot a fancy histogram
load( "aflsmall.Rdata" )
hist( x = afl.margins, main = "2010 AFL margins", xlab = "Margin", density = 10, angle = 40, border = "gray20", col = "gray80", labels = TRUE, ylim = c(0,40))

#boxplot
load( "aflsmall2.Rdata" )
boxplot( formula = margin ~ year,data = afl2, xlab = "AFL season", ylab = "Winning Margins", frame.plot = FALSE, staplewex = 0, staplecol = "white", boxwex = .75, boxfill = "grey80", whisklty = 1, whiskcol = "grey70", boxcol = "grey70", outcol = "grey70", outpc = 20, outcex = .5, medlty = "blank", medpch = 20, medlwd = 1.5)

#barplot
load( "aflsmall.Rdata" )
barplot( height = freq, names.arg = teams, las = 2, ylab = "N of Finalist", main = "Finals Played, 1987-2010", density = 10, angle = 20 ) 
