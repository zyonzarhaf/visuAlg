Algoritmo "funcao_fatorial"

var
   N, F: Inteiro
   
Funcao Fatorial(V: Inteiro): Inteiro

var
   C, R: Inteiro

Inicio
   R <- 1
   Para C <- 1 at? V faca
      R <- R * C
   FimPara
   Retorne R
FimFuncao

Inicio
   Escreva("Digite um numero: ")
   Leia(N)
   F <- Fatorial(N)
   EscrevaL("O valor de ", N, "! ? igual a ", F)
FimAlgoritmo