Algoritmo "sequencia_de_fibonacci"

Var
   T1, T2, T3, C: Inteiro

Inicio
   T1 <- 0
   T2 <- 1
   Escreva(T1)
   Escreva(T2)
   Para C <- 3 até 15 faça
      T3 <- T1 + T2
      Escreva(T3)
      T1 <- T2
      T2 <- T3
   FimPara
FimAlgoritmo