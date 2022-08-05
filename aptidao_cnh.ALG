Algoritmo "aptidao_cnh"

Var
   N1, N2, R: Inteiro

Inicio
  Escreva("Digite o ano atual: ")
  Leia(N1)
  Escreva("Digite o ano de nascimento: ")
  Leia(N2)
  R <- N1 - N2
  Se (R < 18) entao
     EscrevaL("------------------STATUS------------------")
     EscrevaL("IDADE: ", R)
     EscrevaL("INAPTO A TIRAR CARTEIRA DE HABILITAÇÃO")
     Escreva("---------------------------------------")
  Senao
     EscrevaL("------------------STATUS------------------")
     EscrevaL("IDADE: ", R)
     EscrevaL("APTO A TIRAR A CARTEIRA DE HABILITAÇÃO")
     Escreva("--------------------------------------")
  FimSe
FimAlgoritmo