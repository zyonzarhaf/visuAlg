Algoritmo "calculadora_imc-II"

Var
   M, A, IMC: Real

Inicio
   Escreva("Informe sua massa corporal em quilogramas (Kg): ")
   Leia(M)
   Escreva("Informe sua altura em metros (m): ")
   Leia(A)
   IMC <- M / (A ^ 2)
   EscrevaL("IMC: ", IMC:5:2)
   Se (IMC < 17) entao
      EscrevaL("Muito abaixo do peso de acordo com os padrões do IMC.")
   Senao
      Se (IMC >= 17) e (IMC <= 18.5) entao
         EscrevaL ("Um pouco abaixo do peso de acordo com os padrões do IMC.")
      Senao
         Se (IMC >= 18.5) e (IMC < 25) entao
            EscrevaL("Você está no peso ideal de acordo com os padrões do IMC.")
         Senao
            Se (IMC >= 25) e (IMC < 30) entao
               EscrevaL ("De acordo com os padrões do IMC você está com sobrepeso.")
            Senao
               Se (IMC >= 30) e (IMC < 35) entao
                  Escreva("De acordo com os padrões do IMC você tem obesidade.")
               Senao
                  Se (IMC >= 35) e (IMC < 40) entao
                     Escreva("De acordo com os padrões do IMC você possui obesidade severa.")
                  Senao
                     Escreva("De acordo com os padrões do IMC você possui obesidade mórbida.")
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
FimAlgoritmo