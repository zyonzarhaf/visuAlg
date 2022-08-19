Algoritmo "operadores_logicos_triangulos"

Var
   L1, L2, L3: Real
   TRI, EQ, ES: Logico

Inicio
   Escreva("Digite o primeiro lado: ")
   Leia(L1)
   Escreva("Digite o segundo lado: ")
   Leia(L2)
   Escreva("Digite o terceiro lado: ")
   Leia(L3)
   TRI <- (L1 < L2 + L3) e (L2 < L1 + L3)  e (L3 < L1 + L2)
   EQ <- (L1 = L2) e (L2 = L3)
   ES <- (L1 <> L2) e (L2 <> L3) (L1 <> L3)
   EscrevaL("Os valores digitados formam um triangulo ", TRI)
   EscrevaL("O triangulo é EQUILATERO ", EQ)
   EscrevaL ("O triangulo é ESCALENO ", ES)
FimAlgoritmo
   