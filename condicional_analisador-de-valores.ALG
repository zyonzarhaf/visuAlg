Algoritmo "condicional_analisador-de-valores"

Var
   S, D5, N, SP, SP1, SP2, SP3, SP4, SP5, N1, N2, N3, N4, N5: Inteiro
   M, NULL: Real

Inicio
   EscrevaL("Digite o 1o valor: ")
   Leia(N1)
   Se (N1 % 5 = 0) ent?o
      D5 <- D5 + 1
   FimSe
   Se (N1 = 0) ent?o
      NULL <- NULL + 1
   FimSe
   Se (N1 % 2 = 0) ent?o
      SP1 <- N1
   FimSe
   EscrevaL("Digite o 2o valor: ")
   Leia(N2)
   Se (N2 % 5 = 0) ent?o
      D5 <- D5 + 1
   FimSe
   Se (N2 = 0) ent?o
      NULL <- NULL + 1
   FimSe
   Se (N2 % 2 = 0) ent?o
      SP2 <- N2
   FimSe
   EscrevaL("Digite o 3o valor: ")
   Leia(N3)
   Se (N3 % 5 = 0) ent?o
      D5 <- D5 + 1
   FimSe
   Se (N3 = 0) ent?o
      NULL <- NULL + 1
   FimSe
   Se (N3 % 2 = 0) ent?o
      SP3 <- N3
   FimSe
   EscrevaL("Digite o 4o valor: ")
   Leia(N4)
   Se (N4 % 5 = 0) ent?o
      D5 <- D5 + 1
   FimSe
   Se (N4 = 0) ent?o
      NULL <- NULL + 1
   FimSe
   Se (N4 % 2 = 0) ent?o
      SP4 <- N4
   FimSe
   EscrevaL("Digite o 5o valor: ")
   Leia(N5)
   Se (N5 % 5 = 0) ent?o
      D5 <- D5 + 1
   FimSe
   Se (N5 = 0) ent?o
      NULL <- NULL + 1
   FimSe
   Se (N5 % 2 = 0) ent?o
      SP5 <- N5
   FimSe
   S <- (N1 + N2 + N3 + N4 + N5)
   M <- (S / 5)
   SP <- (SP1 + SP2 + SP3 + SP4 + SP5)
   EscrevaL("A soma entre os valores ? ", S)
   EscrevaL("A m?dia entre os valores ? ", M)
   EscrevaL("Valores divi?sveis por cinco: ", D5)
   EscrevaL("Valores nulos: ", NULL)
   EscrevaL("A soma dos valores pares ?: ", SP)
FimAlgoritmo