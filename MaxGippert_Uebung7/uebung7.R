#Als kleine �bung und zur �berpr�fung meiner Ergebnisse habe ich hier die Rechenaufgaben
#in R gel�st



setwd("E:/Desktop/Studium/Biophysik/Semester 4/Bioinformatik/�bungen/�bung7")

input <- read.table("data.txt", header=F)
t(input)   

xa <- mean(as.numeric(as.vector(input[1,])), na.rm=T)
xb <- mean(as.numeric(as.vector(input[2,])))

sqrt(var(as.numeric(as.vector(input[1,])), na.rm=T))
sqrt(var(as.numeric(as.vector(input[2,])), na.rm=T))

varA <- 0
for(i in 1:5){
  varA <- varA + (as.numeric(as.vector(input[1,]))[i]-xa)^2
}
varA

varB <- 0
for(i in 1:7){
  varB <- varB + (as.numeric(as.vector(input[2,]))[i]-xb)^2
}
varB

i1 <- as.numeric(as.vector(input[1,]))
i1 <- i1[!is.na(i1)]
i2 <- as.numeric(as.vector(input[2,]))
i2

t.test(i1, i2, alternative="two.sided", var.equal=T)

#Der Quellcode f�r Aufgabe 7.4 wurde unver�ndert aus dem in Whiteboard bereitgestellten code �bernommen
