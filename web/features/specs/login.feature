#language: pt

Funcionalidade: Login
	Sendo um usuário cadastrado
	Quero acessar o sistema no RockLov
	Para que eu possa anunciar meus equipamentos musicais

	@login
	Cenário: Login do usuário

		Dado que acesso a página principal
		Quando submeto minhas credenciais com "ildes@gmail.com" e "pwd123"
		Então sou redirecionado para o Dashboard

	Esquema do Cenário: Tentar logar

		Dado que acesso a página principal
		Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
		Então vejo a mensagem de alerta: "<mensagem_output>"

		Exemplos:
		|email_input    |senha_input|mensagem_output                 |
		|ildes@gmail.com|abc123     |Usuário e/ou senha inválidos.   |
		|ildes@404.com  |pwd123     |Usuário e/ou senha inválidos.   |
		|ildes&ig.com.br|abc123     |Oops. Informe um email válido!  |
		|               |abc123     |Oops. Informe um email válido!  |
		|ildes@gmail.com|           |Oops. Informe sua senha secreta!|