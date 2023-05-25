programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro primeiraTela
		real saldoCC = 0, saldoCP = 0, deposito, adicionarCC
		cadeia nome, senha, numeroConta
		logico menu = verdadeiro 
		
			faca{
				escreva("╔━━━━━━━━━━ ♤━━━━━━━━━━━╗\n")
				escreva("|    BANCO  ETENNEDY    |\n") 
				escreva("| [1] - criar uma conta |\n") 
				escreva("| [0] - sair            |\n")
				escreva("╚━━━━━━━━━━ ♤ ━━━━━━━━━━╝\n")
				escreva ("➤ ")
				leia(primeiraTela)
				limpa()
				
				//criando conta
				se (primeiraTela == 1){
					
					//nome do usuario
					escreva("╔━━━━━━━━━━━ ♤ ━━━━━━━━━━━╗\n")
					escreva("|     Digite seu nome     |\n") 
					escreva("╚━━━━━━━━━━━ ♤ ━━━━━━━━━━━╝\n")
					escreva("➤ ")
					leia (nome)
					limpa()
					
					//senha
					escreva("╔━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╗\n")
					escreva("|     Digite sua senha     |\n")
					escreva("╚━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╝\n")
					escreva("➤ ")
					leia (senha)
					limpa()

					//número da conta
					escreva("╔━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╗\n")
					escreva("| Digite o número da conta |\n")
					escreva("╚━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╝\n")
					escreva("➤ ")
					leia (numeroConta)
					limpa()
	
					//perguntando se quer depositar
					logico menuDeposito = verdadeiro
					faca{
						escreva("╔━━━━━━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━━━━━━╗\n")
						escreva("| Deseja fazer um depósito ínicial em sua conta? |\n")
						escreva("|                    [1] - Sim                   |\n")
						escreva("|                    [0] - não                   |\n")
						escreva("╚━━━━━━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━━━━━━╝\n")
						escreva("➤ ")
						leia (deposito)
						limpa()
	
						//caso o usuario queira depositar algum valor
						se (deposito == 1){
							escreva("╔━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╗\n")
							escreva("| Qual valor deseja depositar? |\n")
							escreva("╚━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╝\n")
							escreva("➤ R$")
							leia (adicionarCC)
							//acumulando o valor depositado
							saldoCC = saldoCC + adicionarCC
							limpa()
							menuDeposito = falso
						}
						//não quer depositar
						senao se (deposito == 0){
							menuDeposito = falso
						} 
						//caso não digitem nenhuma das duas opções
						senao{
							escreva("╔━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╗\n")
							escreva("| Digite uma opção valida! |\n")
							escreva("╚━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╝\n\n")
						}
					}
					
					//fim do menu de deposito
					enquanto (menuDeposito == verdadeiro)
	
					//menu da conta
					logico fimMenu = falso
					faca{
						inteiro menuConta
						escreva("|| Olá, Sr(a) ", nome, " ||\n")
						escreva("╔━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━╗\n")
						escreva("|         BANCO ETENNEDY         |\n")
						escreva("| [1] - entrar na Conta Corrente |\n")
						escreva("| [2] - entrar na Conta Poupança |\n")
						escreva("| [0] - sair                     |\n")
						escreva("╚━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━╝\n")
						escreva("➤ ")
						leia(menuConta)
						limpa()
		
		
						//escolha das contas que ele vai entrar
						inteiro opcoesConta
						logico fimContaEscolhida = falso
						cadeia senhaAcesso
						real retirarConta
						faca{
							escolha (menuConta){
								//menu conta corrente
								caso 1:
									escreva("╔━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━━╗\n")
									escreva("| [1] - exibir dados da Conta Corrente |\n")
									escreva("| [2] - saque em Conta Corrente        |\n")
									escreva("| [3] - deposito em Conta Corrente     |\n")
									escreva("| [0] - voltar ao menu                 |\n")
									escreva("╚━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━╝\n")
									escreva("➤ ")
									leia(opcoesConta)
									limpa()
		
									//escolhas da conta corrente
									escolha (opcoesConta){
										//opção exibir dados CC
										caso 1:
											//solicitando senha para ver os dados
											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")										
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()
											//verificando senha
											se (senha == senhaAcesso){
												escreva("|♤ Nome: ", nome, "\n")
												escreva("|♤ Saldo: R$", saldoCC, "\n")
												escreva("|♤ Numero da Conta: ", numeroConta, "-0\n\n")
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}
											
										pare
										//opção sacar da CC
										caso 2:
											escreva("╔━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╗\n")
											escreva("| Qual valor deseja sacar? |\n")
											escreva("╚━━━━━━━━━━━━ ♤ ━━━━━━━━━━━╝\n")
											escreva("➤ R$")
											leia (retirarConta)
											limpa()

											//senha para  sacar da CC
											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")										
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()
											se (senha == senhaAcesso){
											//se o saque for maior que o saldo
												se (retirarConta > saldoCC){
													escreva("▲ O saque no valor de R$", retirarConta," não pode ser realizado, pois seu saldo é de R$", saldoCC, " ▲\n\n")
												}
												
												//saque menor ou igual ao valor do saldo
												senao{
													saldoCC = saldoCC - retirarConta
												}
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}
										pare
										//depositar na CC
										caso 3:
											escreva("╔━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╗\n")
											escreva("| Qual valor deseja depositar? |\n")
											escreva("╚━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╝\n")
											escreva("➤ R$")
											leia(adicionarCC)
											limpa()

											//senha para fazer deposito na CC
											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")										
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()
											
											se (senha == senhaAcesso){
												//acumulando o valor depositado
												saldoCC = saldoCC + adicionarCC
												limpa()
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}										
										pare
										//voltar ao menu de seleção de contas
										caso 0:
											fimContaEscolhida = verdadeiro
										pare
									}
								pare
		
								//opções conta Poupança
								caso 2:
									escreva("╔━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━╗\n")
									escreva("| [1] - exibir dados da Conta Poupança |\n")
									escreva("| [2] - resgate em Conta Poupança      |\n")
									escreva("| [3] - aplicar em Conta Poupança      |\n")
									escreva("| [0] - voltar ao menu                 |\n")
									escreva("╚━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━╝\n")
									escreva("➤ ")
									leia(opcoesConta)
									limpa()
	
									//escolha conta popança
									escolha (opcoesConta){
										caso 1:

											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")										
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()

											//verificar a senha para ver os dados da CP
											se (senha == senhaAcesso){
												escreva("|♤ Nome: ", nome, "\n")
												escreva("|♤ Saldo: ", saldoCP, "\n")
												escreva("|♤ Numero da Conta: ", numeroConta, "-1\n\n")
												
											//se a senha estiver icorreta	
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}
										pare
										//resgatar da popança para a corrente
										caso 2:
											escreva("╔━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╗\n")
											escreva("| Qual valor deseja resgatar? |\n")
											escreva("╚━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━╝\n")
											escreva("➤ R$")
											leia (adicionarCC)
											limpa()

											//senha do usuario para resgatar da CP para CC
											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")																		
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()
											
											se (senha == senhaAcesso){
												//se o resgate for maior que o saldo da poupança
												se (adicionarCC > saldoCP){
													escreva("▲ O resgate no valor de R$", adicionarCC," não pode ser realizado, pois seu saldo na conta poupança é de R$", saldoCP, " ▲\n\n")
												}
											
												//resgate menor ou igual ao valor do saldo da conta poupança
												senao{
													saldoCP = saldoCP - adicionarCC 
													saldoCC = saldoCC + adicionarCC
												}	
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}
											
										pare								
										//aplicando na poupança
										caso 3:
											escreva("╔━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━━━╗\n")
											escreva("| Qual valor deseja aplicar na poupança? |\n")
											escreva("╚━━━━━━━━━━━━━━━━━━ ♤ ━━━━━━━━━━━━━━━━━━━╝\n")
											escreva("➤ R$")
											leia (retirarConta)
											limpa()

											//senha para tirar da conta corrente para a conta popança
											escreva("╔━━━━━━━ ♤ ━━━━━━━━╗\n")										
											escreva("| Digite sua senha |\n")
											escreva("╚━━━━━━━ ♤ ━━━━━━━━╝\n")
											escreva("➤ ")
											leia(senhaAcesso)
											limpa()
											
											se (senha == senhaAcesso){
												//se a aplicação for maior que o saldo da conto corrente
												se (retirarConta > saldoCC){
													escreva("▲ A aplicação no valor de R$", retirarConta," não pode ser realizado, pois seu saldo na conta corrente é de R$", saldoCC, " ▲\n\n")
												}
		
												//aplicação menor ou igual ao valor do saldo da conta corrente
												senao{
													saldoCC = saldoCC - retirarConta
													saldoCP = saldoCP + retirarConta
												}
											}senao {
												escreva ("▲ SENHA ICORRETA ▲\n\n")
												}
											
										pare
										//voltar ao menu de seleção de contas
										caso 0:
											fimContaEscolhida = verdadeiro
										pare
										
									}
								pare
								caso 0:
									escreva ("Obrigado! Sr(a) ", nome,", volte sempre!")
									fimMenu = verdadeiro
									fimContaEscolhida = verdadeiro
									menu = falso
								pare
								caso contrario:
									escreva("▲ Digite uma opção valida! ▲\n\n")
								pare
							}

						//fim do menu da conta que você entrou
						}enquanto (fimContaEscolhida == falso)
							
					//fim do menu de escolha entre conta CC ou CP
					} enquanto (fimMenu == falso)
					
				//sevna primeira tela você apertar '0' pra sair	
				} senao se(primeiraTela == 0){
					escreva ("obrigado Sr(a), volte sempre")
					menu = falso
					
				//se na primeira tela nao apertar '0' ou '1'	
				} senao {
					escreva ("▲ Digite uma opção válida ▲\n\n")
				}
			//fim da primeira tela	
			}enquanto(menu == verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */