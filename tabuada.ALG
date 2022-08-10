Algoritmo "tabuada"

Var
   C, N, R: Inteiro
   resp: Caractere
   
Inicio
   Repita
      C <- 1
      Escreva("Quer saber a tabuada de qual número? ")
      Leia(N)
      Repita
         R <- N * C
         EscrevaL(N, " X ", C, " = ", R)
         C <- C + 1
      Ate (C > 10)
      Escreva("Quer continuar? [s/n] ")
      Leia(resp)
      LimpaTela
   Ate (resp = "n")
FimAlgoritmo