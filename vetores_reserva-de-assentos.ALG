Algoritmo "vetores_reserva-de-assentos"
Var
   x, j: Inteiro
   aux: Caractere
   Banco: Vetor [1..8] de Caractere
Inicio
   Para x <- 1 até 8 faça
      EscrevaL("-------------------------------------------------------")
      EscrevaL("[ B1 ] [ B2 ] [ B3 ] [ B4 ] [ B5 ] [ B6 ] [ B7 ] [ B8 ]")
      EscrevaL("-------------------------------------------------------")
      Escreva("Reservar a cadeira: ")
      Leia(Banco[x])
   FimPara
   Para x <- 1 até 7 faça
      Para j <- x + 1 até 8 faça
         Se (Banco[x] > Banco[j]) então
            aux <- Banco[x]
            Banco[x] <- Banco[j]
            Banco[j] <- aux
         FimSe
      FimPara
   FimPara
   Para x <- 1 até 8 faça
      Escreva("{ ", Banco[x], " x }")
   FimPara
FimAlgoritmo