Algoritmo "condicional_seletor-de-pessoas"

Var
    sexo, resp: Caractere
    idade, cabelo, X, Y: Inteiro
Inicio
   Repita
      EscrevaL("==================")
      EscrevaL("SELETOR DE PESSOAS")
      EscrevaL("==================")
      EscrevaL("Qual o sexo? [m/f]")
      Leia(sexo)
      EscrevaL("Qual a idade?")
      Leia(idade)
      EscrevaL("Qual a cor do cabelo?")
      EscrevaL("---------------------")
      EscrevaL("[1] Preto")
      EscrevaL("[2] Castanho")
      EscrevaL("[3] Loiro")
      EscrevaL("[4] Ruivo")
      Leia(cabelo)
      Se (sexo = "m") e (idade > 18) e (cabelo = 2) então
         X <- X + 1
      Senao
         Se (sexo = "f") e (idade > 25) e (idade < 30) e (cabelo = 3) então
               Y <- Y + 1
         FimSe
      FimSe
      EscrevaL("Quer continuar? [s/n]")
      Leia(resp)
      LimpaTela
   Ate (resp = "n")
   EscrevaL("Total de homens com mais de 18 anos, com cabelos castanhos: ", X)
   EscrevaL("Total de mulheres entre 25 e 30 anos, com cabelos loiros: ", Y)
FimAlgoritmo