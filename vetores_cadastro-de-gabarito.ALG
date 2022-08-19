Algoritmo "vetores_cadastro-de-gabarito"
//algoritmo destinado a cadastrar um gabarito, comparando-o com as respostas
//de 03 alunos diferentes e apresentando a nota de cada um.
Var
   x, y, z: Inteiro
   nota: Inteiro
   notaToT: Vetor [1..3] de Inteiro
   nome: Vetor [1..3] de Caractere
   gab, resp: Vetor [1..5] de Caractere
Inicio
   Para x <- 1 até 5 faça
      Escreva("Questão ", x, ": ")
      Leia(gab[x])
   FimPara
   Para y <- 1 até 3 faça
      EscrevaL("---------")
      EscrevaL("Aluno ", y)
      EscrevaL("---------")
      Escreva("Nome: ")
      Leia(nome[y])
      EscrevaL("RESPOSTAS DADAS")
         Para x <- 1 até 5 faça
            Escreva("Questão ", x, ": ")
            Leia(resp[x])
            Se(resp[x] = gab[x]) então
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