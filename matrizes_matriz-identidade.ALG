Algoritmo "matrizes_matriz-identidade"

Var
  m: vetor [1..3, 1..3] de Inteiro
  l, c: Inteiro

Inicio
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 3 fa?a
         Se l = c ent?o
            m[l, c] <- 1
         Sen?o
            m[l, c] <- 0
         FimSe
      FimPara
   FimPara
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 3 fa?a
         Escreva(m[l, c])
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo