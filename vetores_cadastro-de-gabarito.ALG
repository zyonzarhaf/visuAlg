Algoritmo "vetores_cadastro-de-gabarito"

Var
   x, y, z: Inteiro
   nota: Inteiro
   notaToT: Vetor [1..3] de Inteiro
   nome: Vetor [1..3] de Caractere
   gab, resp: Vetor [1..5] de Caractere
Inicio
   Para x <- 1 at? 5 fa?a
      Escreva("Quest?o ", x, ": ")
      Leia(gab[x])
   FimPara
   Para y <- 1 at? 3 fa?a
      EscrevaL("---------")
      EscrevaL("Aluno ", y)
      EscrevaL("---------")
      Escreva("Nome: ")
      Leia(nome[y])
      EscrevaL("RESPOSTAS DADAS")
         Para x <- 1 at? 5 fa?a
            Escreva("Quest?o ", x, ": ")
            Leia(resp[x])
            Se(resp[x] = gab[x]) ent?o
               nota <- nota + 20
            FimSe
         FimPara
      notaToT[y] <- nota
      nota <- 0
   FimPara
   EscrevaL(nome[1], notaToT[1])
   EscrevaL(nome[2], notaToT[2])
   EscrevaL(nome[3], notaToT[3])
FimAlgoritmo