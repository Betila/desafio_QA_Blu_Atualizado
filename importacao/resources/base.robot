***Settings***
Documentation    Aqui temos a estrutura base do projeto, o selenium é importado aqui

Library    SeleniumLibrary

Resource    kws.robot

***Keywords***
## Hooks
Open Session
    Open Browser    about:blank    chrome

Close Session
    Capture Page Screenshot
    Close Browser