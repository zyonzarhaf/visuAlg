Algoritmo "matrizes_analisador-de-matriz"

Var
   m: Vetor [1..4, 1..4] de Inteiro
   l, c, sDP, p2l, mai3c: Inteiro
Inicio
   sDP <- 0
   p2l <- 1
   mai3c <- 0
   Para l <- 1 at? 4 fa?a
      Para c <- 1 at? 4 fa?a
         Escreva("Digite o valor da posi??o [", l, ",", c, "]")
         Leia(m[l, c])
         Se l = c ent?o
            sDP <- sDP + m[l, c]
         FimSe
      FimPara
   FimPara
   EscrevaL()
   EscrevaL("-------------------------------")
   Para l <- 1 at? 4 fa?a
      Para c <- 1 at? 4 fa?a
         Escreva(m[l, c]:5)
      FimPara
      EscrevaL()
   FimPara
   Para c <- 1 at? 4 fa?a
      p2l <- (p2l * m[2, c])
   FimPara
   Para c <- 1 at? 4 fa?a
      Se m[3, c] > mai3c ent?o
         mai3c <- m[3, c]
      FimSe
   FimPara
   EscrevaL("A soma da diagonal principal ? ", sDP, ".")
   EscrevaL("O produto entre os valores da segunda linha e ", p2l, ".")
   EscrevaL("O maior valor da 3a linha ? ", mai3c, ".")
FimAlgoritmo