Algoritmo "matrizes_par-ou-impar"
//par=chave
//impar=colchete

Var
   m: vetor [1..3, 1..3] de Inteiro
   l, c: Inteiro

Inicio
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 3 fa?a
         Escreva("Digite o valor da posi??o [", l, ",", c, "]: ")
         Leia(m[l, c])
      FimPara
   FimPara
   EscrevaL()
   EscrevaL("-------MATRIZ-------")
   EscrevaL("--------------------")
   Para l <- 1 at? 3 fa?a
      Para c <- 1 at? 3 fa?a
         Se(m[l, c] % 2 = 0) ent?o
            Escreva("{",m[l, c]:3,"}")
         Sen?o
            Escreva("[",m[l, c]:3,"]")
         FimSe
      FimPara
      EscrevaL()
   FimPara
Fimalgoritmo