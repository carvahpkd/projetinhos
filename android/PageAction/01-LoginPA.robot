***Settings***
Resource            ../Resources/base.robot

***Variables***
#Home Seja Bem Vindo
${boasVindas}               id=com.itau:id/title_welcome
${btnAbrirConta}            id=com.itau:id/create_account
${btnAcessarConta}          xpath=//android.widget.Button[@content-desc="acessar minha conta"]
#Onboarding
${btnFechar}                id=com.itau:id/close
${btnEntrar}                id=com.itau:id/enter
${btnOkSeguranca}           xpath=//android.widget.Button[@content-desc="Continuar"]/android.widget.TextView
${btnPermitir}              id=com.android.permissioncontroller:id/permission_allow_button
${permitirLoc}              id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
#Login
${btnAmbiente}              id=com.itau:id/environment_button
${selectAmbiente}           xpath=//android.widget.TextView[@text='${Config.ambiente}']
${selectProd}               xpath=//android.widget.Button[@text='${Config.prod}']
${campoAgencia}             xpath=//android.widget.EditText[@content-desc="agência"]
${campoConta}               xpath=//android.widget.EditText[@content-desc="conta"]
${btnOk}                    xpath=//android.widget.Button[@content-desc="ok"]
#Senha
${senhaEletronica}          xpath=//android.widget.TextView[@content-desc="senha de acesso"]
${campoSenha}               id=com.itau:id/linear_password_wrapper
${btnAcessar}               id=com.itau:id/button_electronic_password_access
${esqueciSenha}             id=com.itau:id/text_forgot_password
#Selecionar Titular
${listaTitular}             id=com.itau:id/view_account_list_content
${btnVoltar}                xpath=//android.widget.Button[@content-desc="voltar"]
${selecionaTitular}         xpath=//android.widget.TextView[contains(@text,'${ContaCoTitular.nomeTitular}')]


***Keywords***
Acessar Minha Conta
    sleep       5
    ${IsElementHomeVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${btnAcessarConta}
    log      ${IsElementHomeVisible}
    Run Keyword If     ${IsElementHomeVisible}       Click Element   ${btnAcessarConta}
    sleep       5

    ${IsElementPermitVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${btnPermitir}
    log      ${IsElementPermitVisible}
    Run Keyword If     ${IsElementPermitVisible}      Click Element   ${btnPermitir}
    sleep       5

    ${IsElementLocaVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${permitirLoc} 
    log      ${IsElementLocaVisible}
    Run Keyword If     ${IsElementLocaVisible}      Click Element   ${permitirLoc}
    sleep       5

    ${IsElementSegVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${btnOkSeguranca}
    log      ${IsElementSegVisible}
    Run Keyword If     ${IsElementSegVisible}      Click Element   ${btnOkSeguranca}
    sleep       5

Fechar Onboarding Bem Vindo
    Wait Until Element Is Visible       ${btnFechar}  
    Click Element                       ${btnFechar}

Selecionar Ambiente
    Wait Until Element Is Visible       ${btnAmbiente}

Dado que o Cliente Acesse a Timeline com Conta Padrão
    Input Text                          ${campoAgencia}      ${DadosDe.agencia}  
    Input Text                          ${campoConta}        ${DadosDe.conta}     
    Click Element                       ${btnOk}           
    sleep                               5

Dado que o Cliente Acesse a tela de Extrato Pix
    Input Text                          ${campoAgencia}      ${ContaPix.agencia}  
    Input Text                          ${campoConta}        ${ContaPix.conta}     
    Click Element                       ${btnOk}
    sleep                               5

Dado que o Cliente Acesse a Timeline com Conta de Lis Contratado
    Input Text                          ${campoAgencia}      ${ContaLisPositivo.agencia}  
    Input Text                          ${campoConta}        ${ContaLisPositivo.conta}     
    Click Element                       ${btnOk}           
    sleep                               10

Login Conta com utilização do lis contratado
    Input Text                          ${campoAgencia}      ${ContaLisParcial.agencia}  
    Input Text                          ${campoConta}        ${ContaLisParcial.conta}     
    Click Element                       ${btnOk}           
    sleep                               10
    Wait Until Element Is Visible       ${listaTitular}
    Click Element                       xpath=//android.widget.TextView[contains(@text,'${ContaLisParcial.nomeTitular}')]
    sleep                               3

Login Conta com utilização total do lis contratado
    Input Text                          ${campoAgencia}      ${ContaLisTotal.agencia}  
    Input Text                          ${campoConta}        ${ContaLisTotal.conta}     
    Click Element                       ${btnOk}           
    sleep                               10

Login Conta com Saldo Negativo Sem lis
    Input Text                          ${campoAgencia}      ${ContaSaldoNegativo.agencia}  
    Input Text                          ${campoConta}        ${ContaSaldoNegativo.conta}     
    Click Element                       ${btnOk}           
    sleep                               10

E Informar a Senha de Acesso
    Wait Until Element Is Visible        ${campoSenha}
    Click Element                        ${campoSenha}  
    @{senha} =  Split String To Characters    ${DadosDe.senha}
    FOR    ${caracter}    IN    @{senha}
        Click Element       xpath=//android.widget.Button[contains(@text,'${caracter}')]
    END
    Click Element        ${btnAcessar}    
    sleep               30

