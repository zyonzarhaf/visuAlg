Algoritmo "vetores_torneio-de-futebol"

Var
   time: Vetor [1..3] de Caractere
   c, d: Inteiro
   
Inicio
   EscrevaL("---------------------")
   EscrevaL("CAMPEONATO DE FUTEBOL")
   EscrevaL("---------------------")
   Para c <- 1 até 3 faça
      EscrevaL("Nome do ", c, "o time: ")
      Leia(time[c])
   FimPara
   EscrevaL("---------------------")
   EscrevaL("TABELA DE PARTIDAS")
   EscrevaL("---------------------")
   Para c <- 1 até 3 faça
      Para d <- 1 até 3 faça
         Se (time[c] <> time[d]) então
            EscrevaL(time[c]:15, "[ ] x [ ]", time[d])
         FimSe
     FimPara
   FimPara
FimAlgoritmo