Algoritmo "calculadora_imc"

Var
   M, A, IMC: Real

Inicio
   Escreva("Informe sua massa corporal em quilogramas (Kg): ")
   Leia(M)
   Escreva("Agora informe sua altura em metros (m): ")
   Leia(A)
   IMC <- M / (A ^ 2)
   EscrevaL("Seu IMC equivale a ", IMC:5:2, ".")
   Se (IMC >= 18.5) e (IMC < 25) entao
      Escreva("Você está na faixa de peso ideal de acordo com os padrões do IMC.")
   Senao
      Escreva("Você não está na faixa de peso ideal de acordo com os padrões do IMC.")
   FimSe
FimAlgoritmo