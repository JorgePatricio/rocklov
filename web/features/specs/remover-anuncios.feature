#language: pt

Funcionalidade: Remover Anúncios
	Sendo um anunciante que possui um equipamento indesejado
	Quero poder remover esse anúncio
	Para que eu possa manter o meu Dashboard atualizado

	Contexto: Login
		* Login com "spider@hotmail.com.br" e "pwd123"

	Cenário: Remover um anúncio

		Dado que eu tenho um anúncio indesejado:
			| thumb     | trompete.jpg |
			| nome      | Trompete     |
			| categoria | Outros       |
			| preco     | 50           |
		Quando eu solicito a exclusão desse item
			E confirmo a exclusão
		Então não devo ver esse item no meu Dashboard

	@temp
	Cenário: Desistir da exclusão

		Dado que eu tenho um anúncio indesejado:
			| thumb     | conga.jpg    |
			| nome      | Conga        |
			| categoria | Outros       |
			| preco     | 150          |
		Quando eu solicito a exclusão desse item
			E não confirmo a exclusão
		Então esse deve permanecer no meu Dashboard