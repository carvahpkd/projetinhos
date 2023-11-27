***Settings***
Resource            ../Resources/base.robot

***Variables***
#Header
${txtHeaderLis}                 xpath=//android.widget.TextView[@text="limite da conta"]
${btnFechaLis}                  xpath=//android.widget.Button[@text="voltar"]
${btnFechaDebug}                xpath=//android.widget.ImageButton[@content-desc="Voltar"]
${alertUsoParcial}              xpath=//android.widget.TextView[@text="você está utilizando seu cheque especial e está sujeito a encargos"]
${alertUsoTotal}                xpath=//android.widget.TextView[@text="você ultrapassou seu limite de cheque especial"]
#Historico de Uso
${txtHistoricoUso}              xpath=//android.widget.TextView[@text="histórico de utilização de cheque especial"]
${txtSemUsoHistorico}           xpath=//android.widget.TextView[@text="você ainda não utilizou cheque especial no período vigente atual."]
${btnPrecisaDeAjuda}            xpath=//android.widget.Button[@text="precisa de ajuda?"]

***Keywords***
# ====== CHEQUE ESPECIAL ==========
Então validar o box de Limites Contratados pelo Cliente
    Detalhes da contratação do lis disponível e não utilizado
    Realizar Logout do Cliente
    sleep                                             5
    Login Conta com utilização do lis contratado
    E Informar a Senha de Acesso
    Quando Acessar o Menu do Extrato
    Detalhes da contratação do lis com uso parcial
    Realizar Logout do Cliente
    sleep                                             5
    Login Conta com utilização total do lis contratado
    E Informar a Senha de Acesso
    Quando Acessar o Menu do Extrato
    Detalhes da contratação do lis com uso total
    Realizar Logout do Cliente
    sleep                                             5
    Login Conta com Saldo Negativo Sem lis
    E Informar a Senha de Acesso
    Quando Acessar o Menu do Extrato
    Detalhes da conta com saldo negativo sem lis
    Realizar Logout do Cliente

Detalhes da contratação do lis disponível e não utilizado
    Wait Until Element Is Visible                   ${limiteConta}                         
    Wait Until Element Is Visible                   ${valorDisponivel}                     
    Wait Until Element Is Visible                   ${detalhesLimites}
    Click Element                                   ${detalhesLimites}
    sleep                                           15

    Wait Until Element Is Visible                   ${btnFechaLis}
    Click Element                                   ${btnFechaLis}
    sleep                                           6

Detalhes da contratação do lis com uso parcial
    Wait Until Element Is Visible                   ${limiteConta}                          
    Wait Until Element Is Visible                   ${valorDisponivel}                     
    Wait Until Element Is Visible                   ${detalhesLimites}
    Wait Until Element Is Visible                   ${msgLisParcial}
    Click Element                                   ${detalhesLimites}
    sleep                                           5
    ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${btnNaoAceitoLocalizacao}
    log     ${IsElementLocVisible}
    Run Keyword If    ${IsElementLocVisible}        Click Element    ${btnNaoAceitoLocalizacao}
    sleep                                           10
    Wait Until Element Is Visible                   ${btnFechaLis}
    Click Element                                   ${btnFechaLis}
    sleep                                           6

Detalhes da contratação do lis com uso total
    Wait Until Element Is Visible                   ${limiteConta}                         
    Wait Until Element Is Visible                   ${valorDisponivel}                     
    Wait Until Element Is Visible                   ${detalhesLimites}
    Wait Until Element Is Visible                   ${msgLisTotal}
    Click Element                                   ${detalhesLimites}
    sleep                                           5
    ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${btnNaoAceitoLocalizacao}
    log     ${IsElementLocVisible}
    Run Keyword If    ${IsElementLocVisible}        Click Element    ${btnNaoAceitoLocalizacao}
    sleep                                           10
    Wait Until Element Is Visible                   ${btnFechaLis}
    Click Element                                   ${btnFechaLis}
    sleep                                           6

Detalhes da conta com saldo negativo sem lis
    Page Should Not Contain Text                    ${limiteConta}
    Page Should Not Contain Text                    ${valorDisponivel}
    Page Should Not Contain Text                    ${detalhesLimites}
    sleep                                           6



