Algoritmo "vetores_reserva-de-assentos"
Var
   x, j: Inteiro
   aux: Caractere
   Banco: Vetor [1..8] de Caractere
Inicio
   Para x <- 1 at? 8 fa?a
      EscrevaL("-------------------------------------------------------")
      EscrevaL("[ B1 ] [ B2 ] [ B3 ] [ B4 ] [ B5 ] [ B6 ] [ B7 ] [ B8 ]")
      EscrevaL("-------------------------------------------------------")
      Escreva("Reservar a cadeira: ")
      Leia(Banco[x])
   FimPara
   Para x <- 1 at? 7 fa?a
      Para j <- x + 1 at? 8 fa?a
         Se (Banco[x] > Banco[j]) ent?o
            aux <- Banco[x]
            Banco[x] <- Banco[j]
            Banco[j] <- aux
         FimSe
      FimPara
   FimPara
   Para x <- 1 at? 8 fa?a
      Escreva("{ ", Banco[x], " x }")
   FimPara
FimAlgoritmo