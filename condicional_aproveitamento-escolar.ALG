Algoritmo "condicional_aproveitament-escolar"

Var
   nome: caractere
   N1, N2, R: Real

Inicio
   EscrevaL("Digite o nome do aluno: ")
   Leia(nome)
   Escreval("Digite a primeira nota de ", nome, ":")
   Leia(N1)
   EscrevaL("Digite a segunda nota de ", nome, ":")
   Leia(N2)
   R <- (N1 + N2) / 2
   Se (R > 900) e (R < 1000) entao
     EscrevaL("Média de ", nome, ":", R, ".")
     EscrevaL("Aproveitamento: A.")
   Senao
      Se (R > 800) e (R < 900) entao
         EscrevaL("Média de ", nome, ":", R, ".")
         EscrevaL("Aproveitamento: B.")
      Senao
         Se (R > 700) e (R < 800) entao
            EscrevaL("Média de ", nome, ":", R, ".")
            EscrevaL("Aproveitamento: C.")
         Senao
            Se (R > 600) e (R < 700) entao
               EscrevaL("Média de ", nome, ":", R, ".")
               EscrevaL("Aproveitamento: D.")
            Senao
               Se (R > 500) e (R < 600) entao
                  EscrevaL("Média de ", nome, ":", R, ".")
                  EscrevaL("Aproveitamento: E.")
               Senao
                  EscrevaL("Média de ", nome, ":", R, ".")
                  EscrevaL("Aproveitamento: F.")
               FimSe
            FimSe
         FimSe
      FimSe
   FimSe
Fimalgoritmo