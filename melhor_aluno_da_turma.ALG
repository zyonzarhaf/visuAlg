Algoritmo "melhor_aluno_da_turma"

Var
   qtd_alunos, contador: Inteiro
   nome_aluno, melhor_aluno: Caractere
   nota_aluno, maiornota: Real

Inicio
    EscrevaL("---Melhor aluno da turma---")
    Escreva("Quantos alunos a turma tem? ")
    Leia(qtd_alunos)
    contador <- 1
    Enquanto contador <= qtd_alunos faça
       EscrevaL("------------------------")
       EscrevaL("ALUNO ", contador)
       Escreva("Nome do aluno: ")
       Leia(nome_aluno)
       Escreva("Nota de ", nome_aluno, ":")
       Leia(nota_aluno)
       contador <- contador + 1
       Se nota_aluno > maiornota então
          maiornota <- nota_aluno
          melhor_aluno <-nome_aluno
       FimSe
    FimEnquanto
    Escreva("O melhor aluno foi ", melhor_aluno, " com a nota de ", maiornota)
FimAlgoritmo