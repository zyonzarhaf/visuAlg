Algoritmo "procedimento_detector-de-pesado"

Var
    contador, M, Mai: Inteiro
    N, pesado: Caractere
    
Procedimento Topo()
Inicio
    EscrevaL("----------------------------------")
    EscrevaL("DETECTOR DE PESADO")
    EscrevaL("Maior peso at? agora: ", Mai, "kg")
    EscrevaL("----------------------------------")
FimProcedimento

Inicio
    Topo()
    Para contador <- 1 at? 3 fa?a
       Escreva("Digite o nome: ")
       Leia(N)
       Escreva("Digite o peso de ", N, ": ")
       Leia(M)
       Se (M > Mai) ent?o
          Mai <- M
          pesado <- N
       FimSe
       LimpaTela
       Topo()
    FimPara
FimAlgoritmo