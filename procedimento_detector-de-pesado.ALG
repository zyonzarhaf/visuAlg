Algoritmo "procedimento_detector-de-pesado"

Var
    contador, M, Mai: Inteiro
    N, pesado: Caractere
    
Procedimento Topo()
Inicio
    EscrevaL("----------------------------------")
    EscrevaL("DETECTOR DE PESADO")
    EscrevaL("Maior peso até agora: ", Mai, "kg")
    EscrevaL("----------------------------------")
FimProcedimento

Inicio
    Topo()
    Para contador <- 1 até 3 faça
       Escreva("Digite o nome: ")
       Leia(N)
       Escreva("Digite o peso de ", N, ": ")
       Leia(M)
       Se (M > Mai) então
          Mai <- M
          pesado <- N
       FimSe
       LimpaTela
       Topo()
    FimPara
FimAlgoritmo