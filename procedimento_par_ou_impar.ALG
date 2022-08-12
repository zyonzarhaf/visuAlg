Algoritmo "procedimento_par_ou_impar"

Var
   N: Inteiro
   
Procedimento ParOuImpar(V: Inteiro)
Inicio
   Se (V % 2 = 0) então
      EscrevaL("O número ", V, " é PAR")
   Senao
      EscrevaL("O número ",V, " é IMPAR")
   FimSe
FimProcedimento

Inicio
   Escreva("Digite um número: ")
   Leia(N)
   ParOuImpar(N)
FimAlgoritmo