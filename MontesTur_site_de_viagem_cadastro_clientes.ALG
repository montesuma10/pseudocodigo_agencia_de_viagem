algoritmo "Cadastro agência de viagens"
// Disciplina   : Recode Pro:
// Descrição   : Programa cadstro de cliente de agência de turismo
// Autor(a)    : Ricardo Montesuma Filho
// Data atual  : 05/08/2023.

var

   nomes: vetor[0..9] de caracter
   cpf: vetor[0..9] de inteiro
   destino: vetor[0..9] de caracter
   op, nome: caracter
   i, j, s: inteiro


procedimento inicializa()

inicio

   enquanto op <> "3" faca

      escreval("----------------- BEM VINDO ----------------")
      escreval()
      escreval("---- CADASTRO DE CLIENTES DA MONTESTUR -----")
      escreval("------- Escolha uma das opções a seguir ------")
      escreval("--------------------------------------------")
      escreval()
      escreval("*(1) Cadastrar novo cliente")
      escreval("*(2) Pesquisar por cliente")
      escreval("*(3) Sair")
      escreval()

      escreva("Opção: ")
      leia(op)

      se op="1" entao
         limpatela

         se s=10 entao

            escreval("--- ATENÇÃO!!! LIMITE CADASTRAL ESGOTADO  ---")

         senao

            cadastrar_novo_cliente()
         fimse
      fimse


      se op="2" entao
         limpatela

         pesquisar_cliente()
      fimse



      se op="3" entao

         para i de 0 ate 9 faca
            nomes[i] <- "x"
         fimpara
         limpatela

         escreval("--> PROGRAMA FINALIZADO! <--")


      fimse
   fimenquanto

fimprocedimento

procedimento cadastrar_novo_cliente())

inicio

   para i de 0 ate 9 faca

      se (nomes[i]="") entao

         escreval("DIGITE OS DADOS DO CLIENTE")
         escreval()

         escreva("-> Nome(apenas letras minúsculas!): ")
         leia(nomes[i])


         escreva("-> CPF (apenas números, sem '.' ou '-'): ")
         leia(cpf[i])

         escreva("-> Destino(Paris, Lisboa, Madri ou Berlim): ")
         leia(destino[i])
         escreval()
         escreval("Cliente cadastrado com sucesso!")
         escreval()

         voltar_menu()

         s <- s + 1

         limpatela
      fimse
   fimpara

   escreval("--- ATENÇÃO!!! LIMITE CADASTRAL ESGOTADO  ---")
   escreval()

fimprocedimento

procedimento voltar_menu()

inicio

   escreva("Voltar para o menu (s/n - apenas letras minúsculas!)? ") // Resposta: letra minÃºscula
   leia(op)

   se op="s" entao

      i <- i + 1

      limpatela

      inicializa()

   senao
      limpatela

      cadastrar_novo_cliente()
   fimse
fimprocedimento


procedimento pesquisar_cliente()

inicio

   j <- 0

   escreval("PARA PESQUISAR UM CLIENTE CADASTRADO...")
   escreval()

   escreva("Informe o nome do(a) cliente(apenas letras minúsculas!): ")
   leia(nome)
   escreval()

   para i de 0 ate 9 faca

      se (nome=nomes[i]) entao

         escreval("* Nome: ", nomes[i])
         escreval("* CPF: ", cpf[i])
         escreval("* Destino: ", destino[i])
         escreval()

         j <- j + 1

      fimse
   fimpara

   se (j = 0) entao

      escreval("OPS... NÃO FOI ACHADO NENHUM CLIENTE COM ESSE NOME!")
      escreval()

   fimse

   Voltar_menu2()

   limpatela

fimprocedimento

procedimento voltar_menu2()

inicio

   Escreva("Voltar para o MENU (s/n - apenas letras minusculas!)? ")
   leia(op)


   se op="s" entao
      limpatela

      inicializa()

   senao
      limpatela
      pesquisar_cliente()
   fimse
fimprocedimento

inicio

   inicializa()

fimalgoritmo