Algoritmo "matrizes_matriz-identidade"

Var
  m: vetor [1..3, 1..3] de Inteiro
  l, c: Inteiro

Inicio
   Para l <- 1 até 3 faça
      Para c <- 1 até 3 faça
         Se l = c então
            m[l, c] <- 1
         Senão
            m[l, c] <- 0
         FimSe
      FimPara
   FimPara
   Para l <- 1 até 3 faça
      Para c <- 1 até 3 faça
         Escreva(m[l, c])
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo