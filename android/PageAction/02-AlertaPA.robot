***Settings***
Resource            ../Resources/base.robot

***Variables***
#Notificações
${txtNotificacaoTitulo}             id=com.itau:id/notification_dialog_title
${txtPerguntaNotificacao}           id=com.itau:id/notification_dialog_text_bold
${txtNotificacaoTexto}              id=com.itau:id/notification_dialog_text
${btnNaoQuero}                      id=android:id/button2
${btnSimQuero}                      id=android:id/button1
#Alerta Localização
${txtAlertaLocalizacao}             xpath=//android.widget.TextView[@text='permitir o uso da localização?']
${btnAceitoLocalizacao}             id=com.itau:id/allowLocationUseButton
${btnNaoAceitoLocalizacao}          id=com.itau:id/doNotAllowLocationUseButton
${btnTentarNovamente}               xpath=//android.widget.Button[@text='tentar novamente']
${btnNegarLocalizacao}              id=com.android.packageinstaller:id/permission_deny_button
${chkNaoPerguntarNovamente}         id=com.android.packageinstaller:id/do_not_ask_checkbox
#Onboard Pix
${btnFecharOnboardPix}              xpath=//android.widget.Button[@content-desc="fechar"]
${btnFecharBanner}                  xpath=//android.widget.Button[@content-desc="fechar"]
${imgOnboardSegTransf}              id=com.itau:id/imgScreenWhatsNew
${txtTitPixAlert}                   id=com.itau:id/tv_title
${txtSubTitPixAlert}                id=com.itau:id/tv_subtitle
${btnOkEntendi}                     id=com.itau:id/btnAccessNewHome
${txtOnboardPixLimite}              xpath=//android.widget.TextView[@text='Para que você tenha ainda mais segurança no seu dia a dia, ocultamos do app Itaú o seu limite diário total e os limites mínimo e máximo de Pix.']
${btnFecharRenegDivida}             id=com.itau:id/closeButton
${imgRenegciarDivida}               id=com.itau:id/icon_reneg
#Serviço indisponível
${fecharMsg}                        id=android:id/button1

***Keywords***
E fechar os alertas e informativos
    sleep                       10
    ${IsElementSerVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${fecharMsg}
    log      ${IsElementSerVisible}
    Run Keyword If     ${IsElementSerVisible}        Click Element    ${fecharMsg}
    sleep       5

    ${IsElementPixVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${btnFecharOnboardPix}
    log     ${IsElementPixVisible}
    Run Keyword If    ${IsElementPixVisible}        Click Element    ${btnFecharOnboardPix}  
    sleep       5

    ${IsElementPixVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${btnFecharBanner}
    log     ${IsElementPixVisible}
    Run Keyword If    ${IsElementPixVisible}        Click Element    ${btnFecharBanner} 
    sleep       5

    ${IsElementVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${txtNotificacaoTitulo}
    log     ${IsElementVisible}
    Run Keyword If    ${IsElementVisible}           Click Element    ${btnNaoQuero} 
    sleep       5

    ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${btnNaoAceitoLocalizacao}
    log     ${IsElementLocVisible}
    Run Keyword If    ${IsElementLocVisible}        Click Element    ${btnNaoAceitoLocalizacao}
    sleep       5

    ${IsElementSerVisible} =  Run Keyword And Return Status    Element Should Be Visible    ${fecharMsg}
    log      ${IsElementSerVisible}
    Run Keyword If     ${IsElementSerVisible}        Click Element    ${fecharMsg}
    sleep       5


E Aceitar as notificações
    ${IsElementVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${txtNotificacaoTitulo}
    log     ${IsElementVisible}
    Run Keyword If    ${IsElementVisible}       Click Element   ${btnSimQuero}

E Negar as notificações
    ${IsElementVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${txtNotificacaoTitulo}
    log     ${IsElementVisible}
    Run Keyword If    ${IsElementVisible}       Click Element   ${btnNaoQuero} 

E Aceitar uso da localização
    ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${btnAceitoLocalizacao}
    log     ${IsElementLocVisible}
    Run Keyword If    ${IsElementLocVisible}       Click Element   ${btnAceitoLocalizacao}

E Negar uso da localização
    ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${btnNaoAceitoLocalizacao}
    log     ${IsElementLocVisible}
    Run Keyword If    ${IsElementLocVisible}       Click Element   ${btnNaoAceitoLocalizacao}

E Tentar novamente
    @{elements}    Get Webelements      ${btnTentarNovamente}
    FOR  ${element}  IN  @{elements}
        ${IsElementLocVisible} =  Run Keyword And Return Status    Element Should Be Visible  ${element}
        log     ${IsElementLocVisible}
        Run Keyword If    ${IsElementLocVisible}       Click Element   ${element}
    END

