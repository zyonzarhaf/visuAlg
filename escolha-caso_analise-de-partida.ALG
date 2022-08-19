Algoritmo "escolha-caso_analise_de_partida"

Var
   N1, N2, R: Inteiro

Inicio
    EscrevaL("----ANALISE DE PARTIDA----")
    Escreva("Quantos gols do time X? ")
    Leia(N1)
    Escreva("Quantos gols do time Y? ")
    Leia(N2)
    EscrevaL("--------------------------")
    R <- Abs(N1 - N2)
    Escolha R
    Caso 0
       EscrevaL("gols do time X: ", N1, ".")
       EscrevaL("gols do time Y: ", N2, ".")
       EscrevaL("DIFERENÇA: ", R, ".")
       EscrevaL("STATUS: EMPATE.")
       Escreva("----------------")
    Caso 1,2,3,4
       EscrevaL("gols do time X: ", N1, ".")
       EscrevaL("gols do time Y: ", N2, ".")
       EscrevaL("DIFERENÇA: ", R, ".")
       EscrevaL("STATUS: PARTIDA NORMAL.")
       Escreva("------------------------")
    OutroCaso
       EscrevaL("gols do time X: ", N1, ".")
       EscrevaL("gols do time Y: ", N2, ".")
       EscrevaL("DIFERENÇA: ", R, ".")
       EscrevaL("STATUS: GOLEADA.")
       Escreva("-----------------")
    FimEscolha
FimAlgoritmo