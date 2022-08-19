Algoritmo "procedimento_sequencia-fibonacci"
Var
   contador, T1,T2,T3: Inteiro
   
Procedimento T3(var A, B: Inteiro)
Var
   C: Inteiro
Inicio
   C <- A + B
   Escreva(C)
   A <- B
   B <- C
FimProcedimento

Inicio
     T1 <- 0
     Escreva(T1)
     T2 <- 1
     Escreva(T2)
     Para contador <- 3 até 10 faça
        T3(T1, T2)
     FimPara
FimAlgoritmo