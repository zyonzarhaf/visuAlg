Algoritmo "matrizes_par-ou-impar"
//par=chave
//impar=colchete

Var
   m: vetor [1..3, 1..3] de Inteiro
   l, c: Inteiro

Inicio
   Para l <- 1 até 3 faça
      Para c <- 1 até 3 faça
         Escreva("Digite o valor da posição [", l, ",", c, "]: ")
         Leia(m[l, c])
      FimPara
   FimPara
   EscrevaL()
   EscrevaL("-------MATRIZ-------")
   EscrevaL("--------------------")
   Para l <- 1 até 3 faça
      Para c <- 1 até 3 faça
         Se(m[l, c] % 2 = 0) então
            Escreva("{",m[l, c]:3,"}")
         Senão
            Escreva("[",m[l, c]:3,"]")
         FimSe
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo