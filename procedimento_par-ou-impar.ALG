Algoritmo "procedimento_par-ou-impar"

Var
   N: Inteiro
   
Procedimento ParOuImpar(V: Inteiro)
Inicio
   Se (V % 2 = 0) ent?o
      EscrevaL("O n?mero ", V, " ? PAR")
   Senao
      EscrevaL("O n?mero ",V, " ? IMPAR")
   FimSe
FimProcedimento

Inicio
   Escreva("Digite um n?mero: ")
   Leia(N)
   ParOuImpar(N)
FimAlgoritmo