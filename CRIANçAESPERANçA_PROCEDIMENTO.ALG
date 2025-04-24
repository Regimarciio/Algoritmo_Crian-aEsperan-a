Algoritmo "CriançaEsperança_Procedimento"
//
//
// Disciplina   : Lógica de Programação
// Professor    : Matheus

Var
   // Seção de Declarações das variáveis
   esc, cvv, numeroCard, venc, nomeCard, usuario, pgto, band, editar,band2: caractere
   doacao, saldo, outro: real
   conf: inteiro

Procedimento PAGT()
Inicio

   escreval("==============================")
   escreval("ESCOLHA A OPÇÃO DE PAGAMENTO: ")
   escreval("==============================")
   escreval
   escreval("1 - PIX")
   escreval("2 - CARTÃO DE CRÉDITO")
   escreval("==============================")
   leia(pgto)
   limpatela

   escolha pgto
   caso "1"
      escreval("SEGUE ABAIXO CHAVE PIX PARA PAGAMENTO")
      escreval("47997529106")
      tempo(2200)
      saldo <- saldo + doacao
      tempo(100)
      escreval("AGRADECEMOS A SUA DOAÇÃO DE R$", doacao)
      escreval("NOSSO SALDO ATUAL É DE R$", saldo)

   caso "2"
      conf <- 1
      enquanto (conf <> 2) faca
         escreval("==============================")
         escreval("Digite a bandeira do cartão: ")
         escreval("==============================")
         escreval
         escreval("1 - MASTERCARD")
         escreval("2 - VISA")
         escreval("3 - ELO")
         leia(band)
         limpatela
         Escolha band
         caso "1"
            band2 <- "MASTERCARD"
         caso "2"
            band2 <- "VISA"
         caso "3"
            band2 <- "ELO"
            limpatela
         FimEscolha

         escreval("Digite o número do cartão: ")
         leia(numeroCard)
         limpatela

         escreval("Digite o nome expresso no cartão: ")
         leia(nomeCard)
         limpatela

         escreval("Digite o CVV do cartão: ")
         leia(cvv)
         limpatela

         escreval("Digite o vencimento do cartão: ")
         leia(venc)
         limpatela

         escreval("CONFIRME SEUS DADOS:")
         escreval("BANDEIRA: ", band2)
         escreval("NÚMERO CARTÃO: ", numeroCard)
         escreval("NOME NO CARTÃO: ", nomeCard)
         escreval("CVV: ", cvv)
         escreval("VENCIMENTO: ", venc)
         escreval
         escreval("ESTÃO CORRETOS?")
         escreval("[1] NÃO")
         escreval("[2] SIM")
         leia(conf)
      fimenquanto
      escreval("EFETUANDO PAGAMENTO...")
      tempo(2200)
      saldo <- saldo + doacao
      tempo(100)
      escreval("AGRADECEMOS A SUA DOAÇÃO DE R$", doacao)
      escreval("NOSSO SALDO ATUAL É DE R$", saldo)
   fimescolha


FimProcedimento

Inicio

   saldo <- 3500000

   escreval("==============================")
   escreval("BEM VINDO AO CRIANÇA ESPERANÇA")
   escreval("==============================")
   tempo(1500)
   limpatela


   escreval("==============================")
   escreval("   DIGITE SEU NOME COMPLETO")
   escreval("==============================")
   leia(usuario)
   tempo(400)
   limpatela

   escreval("================================")
   escreval("ESCOLHA O VALOR QUE DESEJA DOAR: ")
   escreval("1 - R$ 10,00")
   escreval("2 - R$ 100,00")
   escreval("3 - R$ 1.000,00")
   escreval("4 - OUTRO")
   escreval("5 - SAIR")
   escreval("================================")
   leia(esc)
   limpatela

   escreval("================================")
   escreval("PROCESSANDO OPÇÃO SELECIONADA...")
   escreval("================================")
   tempo(400)
   limpatela

   escolha esc

      //caso 1 - R$ 10,00
   caso "1"
      doacao <- 10
      PAGT()

      //caso 2 - R$ 100,00
   caso "2"
      doacao <- 100
      PAGT()

      //caso 3 - R$ 1000,00
   caso "3"
      doacao <- 1000
      PAGT()

      //caso 4 - OUTRO
   caso "4"
      escreval("DIGITE O VALOR QUE DESEJA DOAR: ")
      leia(outro)
      limpatela
      doacao <- outro
      PAGT()

      //caso 5 - sair
   caso "5"
      escreval("FINALIZANDO A LIGAÇÃO...")

   outrocaso
      escreval("OPÇÃO INVALIDA")
   fimescolha

FIMALGORITMO