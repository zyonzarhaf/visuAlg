Algoritmo "matrizes_analisador-de-matriz"

Var
   m: Vetor [1..4, 1..4] de Inteiro
   l, c, sDP, p2l, mai3c: Inteiro
Inicio
   sDP <- 0
   p2l <- 1
   mai3c <- 0
   Para l <- 1 até 4 faça
      Para c <- 1 até 4 faça
         Escreva("Digite o valor da posição [", l, ",", c, "]")
         Leia(m[l, c])
         Se l = c então
            sDP <- sDP + m[l, c]
         FimSe
      FimPara
   FimPara
   EscrevaL()
   EscrevaL("-------------------------------")
   Para l <- 1 até 4 faça
      Para c <- 1 até 4 faça
         Escreva(m[l, c]:5)
      FimPara
      EscrevaL()
   FimPara
   Para c <- 1 até 4 faça
      p2l <- (p2l * m[2, c])
   FimPara
   Para c <- 1 até 4 faça
      Se m[3, c] > mai3c então
         mai3c <- m[3, c]
      FimSe
   FimPara
   EscrevaL("A soma da diagonal principal é ", sDP, ".")
   EscrevaL("O produto entre os valores da segunda linha e ", p2l, ".")
   EscrevaL("O maior valor da 3a linha é ", mai3c, ".")
FimAlgoritmo