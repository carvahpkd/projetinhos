*** Settings ***
Library     AppiumLibrary 

*** Keywords ***
Rolar para Baixo ate encontrar elemento
    [Arguments]     ${elemento}
    FOR     ${a}        IN RANGE    4
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible   ${elemento}
    Run Keyword If  '${IsElementVisible}'=='False'              swipe by percent        50      50      50      10      3000
    ...     ELSE        Exit For Loop
    END      

Rolar um pouco para Baixo
    [Arguments]     ${elemento}
    FOR     ${a}        IN RANGE    2
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible   ${elemento}
    Run Keyword If  '${IsElementVisible}'=='False'              swipe by percent        20      50      20      30      2000
    ...     ELSE        Exit For Loop
    END 

Rolar para baixo dentro da listagem
    [Arguments]     ${elemento}
    FOR     ${a}        IN RANGE    2
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible   ${elemento}
        IF    '${IsElementVisible}'=='True'
            ${statusCategoria}    Set Variable    ${True}
            Exit For Loop
        ELSE   
            swipe by percent        20      50      20      30      2000   
            ${statusCategoria}    Set Variable    ${False}
        END       
    END
    [Return]    ${statusCategoria}

Rolar pra encontrar categoria saida
    @{listCategSaida}    Create List    ${checksGastos}    ${checksPetshop}    ${checksBares}    ${checksCafeteria}
    FOR    ${catSaida}    IN    @{listCategSaida}
        ${IsElementUmVisible}    Rolar para baixo dentro da listagem    ${catSaida}
        IF    ${IsElementUmVisible}
            Click Element    ${catSaida}
            Exit For Loop
        END       
    END

 
Rolar pra encontrar categoria entrada
    @{listCategEntrada}    Create List    ${checksCripto}    ${checksPoupanca}    ${checksReceiNeg}    ${checksBonus}
    FOR    ${catEntrada}    IN    @{listCategEntrada}
        ${IsElementUmVisible}    Rolar para baixo dentro da listagem    ${catEntrada}
        IF    ${IsElementUmVisible}
            Click Element    ${catEntrada}
            Exit For Loop
        END       
    END

Rolar para Cima ate encontrar elemento
    [Arguments]     ${elemento}
    FOR     ${a}        IN RANGE    5
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible   ${elemento}
    Run Keyword If  '${IsElementVisible}'=='False'              swipe by percent        50      70      60      90      600
    ...     ELSE        Exit For Loop
    END

Rolar para esquerda ate encontrar elemento
    [Arguments]         ${elemento}
    FOR     ${a}        IN RANGE    5
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible       ${elemento}
    Run Keyword If      '${IsElementVisible}'=='False'          swipe by percent        50      50      10      50      2000
    ...     ELSE        Exit For Loop
    END

Rolar para direita ate encontrar elemento
    [Arguments]     ${elemento}
    FOR     ${a}    IN RANGE    5
    ${IsElementVisible} =   Run Keyword And Return Status       Element Should Be Visible       ${elemento}
    Run Keyword If      '${IsElementVisible}'=='False'          swipe by percent        50      50      10      50      2000
    ...     ELSE        Exit For Loop
    END

#Swipe By Percent                    47.43       81.32       50.76       26.05
#Swipe By Percent                    70       70       30       30
#pouco pra baixo swipe by percent        20      50      20      30      2000 
#pra baixo   70      70      30      30      3000
#pra cima    10      70      30      90      3000 - lenta
#            50      70      60      90      600 - boa
