Algoritmo "matrizes_jogo-da-velha"

Var
   m: Vetor [1..3, 1..3] de Inteiro
   x, y, n, resposta, marcado, vez, velha: Inteiro
   vencedor: Logico
   jogador: Caractere

Procedimento exibir() //exibe a matriz atualizada na tela
Inicio
   EscrevaL("###JOGO DA VELHA###")
   EscrevaL("+--+--+--+--+--+--+")
   Para x <- 1 at? 3 fa?a
      Para y <- 1 at? 3 fa?a
         Se (m[x, y] = 88) ent?o
            Escreva("|":3,Carac(88):3)
         Sen?o
            Se (m[x, y] = 79) ent?o
               Escreva("|":3,Carac(79):3)
            Sen?o
               Escreva("|":3,m[x, y]:3)
            FimSe
         FimSe
      FimPara
      EscrevaL("|")
      EscrevaL("+--+--+--+--+--+--+")
   FimPara
FimProcedimento

Procedimento analisar()
Inicio
   //Linhas.......................................................
   Para x <- 1 at? 3 fa?a
      Se (m[x, 1] = m[x, 2]) e (m[x, 2] = m[x, 3]) ent?o
         vencedor <- Verdadeiro
      FimSe
   FimPara
   //Colunas......................................................
   Para x <- 1 at? 3 fa?a
      Se (m[1, x] = m[2, x]) e (m[2, x] = m[3, x]) ent?o
         vencedor <- Verdadeiro
      FimSe
   FimPara
   //Diagonais....................................................
   Se (m[1, 1] = m[2, 2]) e (m[2, 2] = m[3, 3]) ent?o
      vencedor <- Verdadeiro
   Sen?o
      Se (m[1, 3] = m[2, 2]) e (m[2, 2] = m[3, 1]) ent?o
         vencedor <- Verdadeiro
      FimSe
   FimSe
   //Verifica se algu?m ganhou e determinar a vez................
   Se (vencedor = Falso) ent?o
      Se(vez % 2 = 0) ent?o
         jogador <- "X"
      Sen?o
         jogador <- "O"
      FimSe
      vez <- vez + 1
      velha <- velha + 1
   FimSe
FimProcedimento

Procedimento jogo()
Inicio
   jogador <- "X"
   vencedor <- Falso
   vez <- 1
   velha <- 0
   Repita
      Escreva("Digite onde quer marcar ", jogador, ": ")
      Leia(resposta)
      Se (resposta > 0) e (resposta < 10) e (resposta <> marcado) ent?o
         marcado <- resposta
         Para x <- 1 at? 3 fa?a
            Para y <- 1 at? 3 fa?a
               Se (m[x, y] = resposta) ent?o
                  Se (jogador = "X") ent?o
                     resposta <- 88
                  Sen?o
                     resposta <- 79
                  FimSe
                  m[x, y] <- resposta
               FimSe
            FimPara
         FimPara
         LimpaTela
         exibir()
         analisar()
      Sen?o
         EscrevaL("Jogada inv?lida! Verifique se a posi??o j? foi marcada ou se escolheu de 1 a 9.")
      FimSe
   At? (vencedor = Verdadeiro) ou (velha = 9)
FimProcedimento

Inicio
   Para x <- 1 at? 3 fa?a //preenche a matriz pela primeira vez
      Para y <- 1 at? 3 fa?a
         n <- n + 1
         m[x, y] <- n
      FimPara
   FimPara
   exibir()
   jogo()
   Se (velha = 9) ent?o
      EscrevaL()
      Escreva("Eita, deu velha!")
   Sen?o
      Se (vencedor = Verdadeiro) ent?o
         Escreva("Vit?ria do ", jogador, "!")
      FimSe
   FimSe
FimAlgoritmo