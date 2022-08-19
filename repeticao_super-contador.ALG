Algoritmo "repeticao_super-contador"

Var
   resp, c: Inteiro

Inicio
   Repita
      EscrevaL
      EscrevaL
      EscrevaL("==================")
      EscrevaL("|      MENU      |")
      EscrevaL("==================")
      EscrevaL("| [1] De 1 a 10  |")
      EscrevaL("| [2] De 10 a 1  |")
      EscrevaL("| [3] Sair       |")
      EscrevaL("==================")
      Leia(resp)
      Se (resp = 1) então
         Repita
            c <- c + 1
            Escreva(c, "...")
         Ate (c = 10)
      Senao
         Se (resp = 2) então
            c <- 11
            Repita
               c <- c - 1
               Escreva(c, "...")
            Ate (c = 1)
         FimSe
      FimSe
   Ate (resp = 3)
FimAlgoritmo