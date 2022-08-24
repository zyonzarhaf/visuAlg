Algoritmo "matrizes"

Var
   m: vetor [1..3, 1..2] de Inteiro
   l, c: Inteiro

Inicio
   Para l <- 1 até 3 faça
      Para c <- 1 até 2 faça
         Escreva("Digite o valor da posição [", l, ",", c, "]: ")
         Leia(m[l, c])
      FimPara
   FimPara
   Para l <- 1 até 3 faça
      Para c <- 1 até 2 faça
         Escreva(m[l, c]:5)
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo