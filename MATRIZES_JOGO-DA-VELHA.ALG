Algoritmo "matrizes_jogo-da-velha"

Var
   m: Vetor [1..3, 1..3] de Inteiro
   x, y, n, resposta, vez, velha: Inteiro
   vezX, vezY, vencedor, jogadorX, jogadorY: Logico

Procedimento vencedor()
Inicio
   Se (m[1,1] = 88) e (m[2,2] = 88) e (m[3,3] = 88) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[1,1] = 79) e (m[2,2] = 79) e (m[3,3] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[3,1] = 88) e (m[2,2] = 88) e (m[1,3] = 88 ) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[3,1] = 79) e (m[2,2] = 79) e (m[1,3] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[1,1] = 88) e (m[1,2] = 88)e (m[1,3] = 88) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[1,1] = 79) e (m[1,2] = 79)e (m[1,3] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[3,1] = 88) e (m[3,2] = 88) e (m[3,3] = 88) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[3,1] = 79) e (m[3,2] = 79) e (m[3,3] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[1,1] = 88) e (m[2,1] = 88) e (m[3,1] = 88) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[1,1] = 79) e (m[2,1] = 79) e (m[3,1] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[1,2] = 88) e (m[2,2] = 88) e (m[3,2] = 88) então
      jogadorX <- Verdadeiro
   Senão
      Se (m[1,2] = 79) e (m[2,2] = 79) e (m[3,2] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
   Se (m[1,3] = 88) e (m[2,3] = 88) e (m[3,3] = 88) então
     jogadorX <- Verdadeiro
   Senão
      Se (m[1,3] = 79) e (m[2,3] = 79) e (m[3,3] = 79) então
         jogadorY <- Verdadeiro
      FimSe
   FimSe
FimProcedimento

Procedimento jogo()
Inicio
   Se (vezX = Verdadeiro) então
      Escreva("Digite onde quer marcar [X]: ")
      Leia(resposta)
      Se (resposta < 1) ou (resposta > 9) então
         Escreva("Jogada inválida! Escolha uma posição de 1 a 9: ")
         Leia(resposta)
      Senão
         Para x <- 1 até 3 faça
            Para y <- 1 até 3 faça
               Se (m[x, y] = resposta) então
                  resposta <- 88
                  m[x, y] <- resposta
               FimSe
            FimPara
         FimPara
         LimpaTela
         Para x <- 1 até 3 faça
            Para y <- 1 até 3 faça
               Se (m[x, y] = 88) então
                  Escreva("|",Carac(88))
               Senão
                  Se (m[x, y] = 79) então
                     Escreva("|",Carac(79))
                  Senão
                     Escreva("|",m[x, y])
                  FimSe
               FimSe
            FimPara
            EscrevaL("|")
            EscrevaL("+--+--+--+")
         FimPara
         vezY <- Verdadeiro
         vezX <- Falso
      FimSe
   Senão
      Se (vezY = Verdadeiro) então
         Escreva("Digite onde quer marcar [O]: ")
         Leia(resposta)
         Se (resposta < 1) ou (resposta > 9) então
            Escreva("Jogada inválida! Escolha uma posição de 1 a 9: ")
            Leia(resposta)
         Senão
            velha <- velha + 1
            Para x <- 1 até 3 faça
               Para y <- 1 até 3 faça
                  Se (m[x, y] = resposta) então
                     resposta <- 79
                     m[x, y] <- resposta
                  FimSe
               FimPara
            FimPara
            LimpaTela
            Para x <- 1 até 3 faça
               Para y <- 1 até 3 faça
                  Se (m[x, y] = 79) então
                     Escreva("|",Carac(79))
                  Senão
                     Se (m[x, y] = 88) então
                        Escreva("|",Carac(88))
                     Senão
                        Escreva("|",m[x, y])
                     FimSe
                  FimSe
               FimPara
               EscrevaL("|")
               EscrevaL("+--+--+--+")
            FimPara
         FimSe
         vezX <- Verdadeiro
         vezY <- Falso
      FimSe
   FimSe
FimProcedimento

Inicio
   vezX <- Verdadeiro
   vezY <- Falso
   Para x <- 1 até 3 faça
      Para y <- 1 até 3 faça
         n <- n + 1
         m[x, y] <- n
      FimPara
   FimPara
   Para x <- 1 até 3 faça
      Para y <- 1 até 3 faça
         Escreva("|",m[x, y])
      FimPara
      EscrevaL("|")
      EscrevaL("+--+--+--+")
   FimPara
   EscrevaL()
   EscrevaL()
   Repita
      jogo()
      vencedor()
   Até (jogadorX = Verdadeiro) ou (jogadorY = Verdadeiro) ou (velha = 9)
   Se (velha = 9) então
      Escreva("Eita, deu velha!")
   Senão
      Se (jogadorX = Verdadeiro) então
         Escreva("Vitória do [X]!")
      Senão
         Escreva("Vitória do [O]!")
      FimSe
   FimSe
FimAlgoritmo