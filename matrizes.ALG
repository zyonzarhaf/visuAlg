Algoritmo "matrizes"

Var
   m: vetor [1..3, 1..2] de Inteiro
   l, c: Inteiro

Inicio
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 2 fa?a
         Escreva("Digite o valor da posi??o [", l, ",", c, "]: ")
         Leia(m[l, c])
      FimPara
   FimPara
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 2 fa?a
         Escreva(m[l, c]:5)
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo