Algoritmo "Crian�aEsperan�a_Procedimento"
//
//
// Disciplina   : L�gica de Programa��o
// Professor    : Matheus

Var
   // Se��o de Declara��es das vari�veis
   esc, cvv, numeroCard, venc, nomeCard, usuario, pgto, band, editar,band2: caractere
   doacao, saldo, outro: real
   conf: inteiro

Procedimento PAGT()
Inicio

   escreval("==============================")
   escreval("ESCOLHA A OP��O DE PAGAMENTO: ")
   escreval("==============================")
   escreval
   escreval("1 - PIX")
   escreval("2 - CART�O DE CR�DITO")
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
      escreval("AGRADECEMOS A SUA DOA��O DE R$", doacao)
      escreval("NOSSO SALDO ATUAL � DE R$", saldo)

   caso "2"
      conf <- 1
      enquanto (conf <> 2) faca
         escreval("==============================")
         escreval("Digite a bandeira do cart�o: ")
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

         escreval("Digite o n�mero do cart�o: ")
         leia(numeroCard)
         limpatela

         escreval("Digite o nome expresso no cart�o: ")
         leia(nomeCard)
         limpatela

         escreval("Digite o CVV do cart�o: ")
         leia(cvv)
         limpatela

         escreval("Digite o vencimento do cart�o: ")
         leia(venc)
         limpatela

         escreval("CONFIRME SEUS DADOS:")
         escreval("BANDEIRA: ", band2)
         escreval("N�MERO CART�O: ", numeroCard)
         escreval("NOME NO CART�O: ", nomeCard)
         escreval("CVV: ", cvv)
         escreval("VENCIMENTO: ", venc)
         escreval
         escreval("EST�O CORRETOS?")
         escreval("[1] N�O")
         escreval("[2] SIM")
         leia(conf)
      fimenquanto
      escreval("EFETUANDO PAGAMENTO...")
      tempo(2200)
      saldo <- saldo + doacao
      tempo(100)
      escreval("AGRADECEMOS A SUA DOA��O DE R$", doacao)
      escreval("NOSSO SALDO ATUAL � DE R$", saldo)
   fimescolha


FimProcedimento

Inicio

   saldo <- 3500000

   escreval("==============================")
   escreval("BEM VINDO AO CRIAN�A ESPERAN�A")
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
   escreval("PROCESSANDO OP��O SELECIONADA...")
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
      escreval("FINALIZANDO A LIGA��O...")

   outrocaso
      escreval("OP��O INVALIDA")
   fimescolha

FIMALGORITMO