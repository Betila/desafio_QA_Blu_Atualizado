***Settings***
Documentation    Exibir tabela de Importação
...              Sendo o dono do empreendimento
...              Quero poder consultar os dados de vendas
...              Para que eu possa manter o controle financeiro

Resource    ../resources/base.robot


Test Setup       Open Session
Test Teardown    Close Session

***Variables***
&{lista}=    Comprado=João Silva    Descrição=R$10 off R$20 of food    Preço=R$ 10,00    Qtde.=R$ 20,00    Total=4    Nome vendendor=987 Fake St    Endereços vendedor=Bob's Pizza


***Test Cases***
Validar Dado da Importacao
    Dado que acesso a página
    Quando "${lista}" de importação
    Então sistema deve exibir Comprado, Descrição, Preço, Qtde., Total, Nome vendendor, Endereços vendedor
