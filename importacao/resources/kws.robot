***Settings***
Documentation    Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***
Dado que acesso a página
    Go To    https://desafio-qa.herokuapp.com/
    Sleep    10


Quando contém o título "Lista de importações da sua loja"
    Wait Until Element Is Visible       class:fa-store    10
    Wait Until Page Contains Element    class:fa-store

Então sistema deve exibir de Total bruto da importação
    Wait Until Page Contains Element    id:importer-status-imported

#Visualizar Tabela de Importação
Quando "${tabelaimportacao}" de importação
    Wait Until Element Is Visible    class:importer-purchases-table    10
    Set Test Variable                ${tabelaimportacao}

Então sistema deve exibir Comprado, Descrição, Preço, Qtde., Total, Nome vendendor, Endereços vendedor
    Wait Until Element Contains    xpath=//td       ${tabelaimportacao['Comprado']}
    Wait Until Element Contains    xpath=//td[2]    ${tabelaimportacao['Descrição']}
    Wait Until Element Contains    xpath=//td[3]    ${tabelaimportacao['Preço']}
    Wait Until Element Contains    xpath=//td[4]    ${tabelaimportacao['Qtde.']}
    Wait Until Element Contains    xpath=//td[5]    ${tabelaimportacao['Total']}
    Wait Until Element Contains    xpath=//td[6]    ${tabelaimportacao['Nome vendendor']}
    Wait Until Element Contains    xpath=//td[7]    ${tabelaimportacao['Endereços vendedor']}
