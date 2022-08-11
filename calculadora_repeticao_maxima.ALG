Algoritmo "calculadora_repeticao_maxima"

Var
   M, RM: Real
   REP: Inteiro
   SN: Caractere

Inicio
    Repita
       EscrevaL("===========CALCULADORA DE REPETIÇÃO MÁXIMA============")
       Escreva("Informe a carga a ser calculada, em quilogramas (kg): ")
       Leia(M)
       Escreva("Agora digite a quantidade de repetições: ")
       Leia(REP)
       RM <- M * (1 + (REP / 30))
       EscrevaL("Baseando-se na fórmula de Epley seu 1RM equivale a ", RM, " kg.")
       EscrevaL("========================================================")
       Escreva("Continuar? [s/n] ")
       Leia(SN)
    Ate (SN = "n")
FimAlgoritmo
    