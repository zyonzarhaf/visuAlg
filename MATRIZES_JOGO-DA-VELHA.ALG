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
   Para x <- 1 até 3 faça
      Para y <- 1 até 3 faça
         Se (m[x, y] = 88) então
            Escreva("|":3,Carac(88):3)
         Senão
            Se (m[x, y] = 79) então
               Escreva("|":3,Carac(79):3)
            Senão
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
   Para x <- 1 até 3 faça
      Se (m[x, 1] = m[x, 2]) e (m[x, 2] = m[x, 3]) então
         vencedor <- Verdadeiro
      FimSe
   FimPara
   //Colunas......................................................
   Para x <- 1 até 3 faça
      Se (m[1, x] = m[2, x]) e (m[2, x] = m[3, x]) então
         vencedor <- Verdadeiro
      FimSe
   FimPara
   //Diagonais....................................................
   Se (m[1, 1] = m[2, 2]) e (m[2, 2] = m[3, 3]) então
      vencedor <- Verdadeiro
   Senão
      Se (m[1, 3] = m[2, 2]) e (m[2, 2] = m[3, 1]) então
         vencedor <- Verdadeiro
      FimSe
   FimSe
   //Verifica se alguém ganhou e determinar a vez................
   Se (vencedor = Falso) então
      Se(vez % 2 = 0) então
         jogador <- "X"
      Senão
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
      Se (resposta > 0) e (resposta < 10) e (resposta <> marcado) então
         marcado <- resposta
         Para x <- 1 até 3 faça
            Para y <- 1 até 3 faça
               Se (m[x, y] = resposta) então
                  Se (jogador = "X") então
                     resposta <- 88
                  Senão
                     resposta <- 79
                  FimSe
                  m[x, y] <- resposta
               FimSe
            FimPara
         FimPara
         LimpaTela
         exibir()
         analisar()
      Senão
         EscrevaL("Jogada inválida! Verifique se a posição já foi marcada ou se escolheu de 1 a 9.")
      FimSe
   Até (vencedor = Verdadeiro) ou (velha = 9)
FimProcedimento

Inicio
   Para x <- 1 até 3 faça //preenche a matriz pela primeira vez
      Para y <- 1 até 3 faça
         n <- n + 1
         m[x, y] <- n
      FimPara
   FimPara
   exibir()
   jogo()
   Se (velha = 9) então
      EscrevaL()
      Escreva("Eita, deu velha!")
   Senão
      Se (vencedor = Verdadeiro) então
         Escreva("Vitória do ", jogador, "!")
      FimSe
   FimSe
FimAlgoritmo