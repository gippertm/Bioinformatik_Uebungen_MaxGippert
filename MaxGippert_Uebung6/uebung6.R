#�bung 6
#Max Gippert

BinomialExperiment <- function(n, p=0.5){
  hits <- 0
  #Simulation
  for(i in 1:n){
    if(runif(1)<=p){
      hits <- hits+1
    }
  }
  
  #Auswertung
  p_laplace <- (hits+1)/(n+2)
  
  print(paste0("Die Wahrscheinlichkeit f�r einen Treffer liegt bei ", p_laplace))
}

for(i in 1:5) BinomialExperiment(10000, p=0.75)

#Wie nach dem Gesetz der gro�en Zahlen zu erwarten, wird die Sch�tzung und die Varianz der Ergebnisse mit einer hohen 
#Stichprobengr��e (n) immer besser und n�hert sich dem tats�chlichen Wert f�r p an. Dabei gibt es bei niedrigen 
#zweistelligen n noch sehr hohe Schwankungen der Ergebnisse und diese liegen nur selten nahe am tats�chlichen Wert - 
#weichen teilweise um mehr als 30% ab
#Bei gro�en Zahlen ab ca. 1000 produziert die Simulation stets Ergebnisse, die immer sehr nahe (+-1) an der tats�chlichen
#Wahrscheinlichkeit liegen.
