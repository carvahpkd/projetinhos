***Settings***
Resource            ../Resources/base.robot


***Variables***
#Header Super APP
${menuDoUsuario}                id=com.itau:id/header_arrow_icon
${menuNovo}                     id=com.itau:id/titleProducts
${nomeUsuario}                  id=com.itau:id/header_name
${headerAgencia}                id=com.itau:id/header_agency
${headerConta}                  id=com.itau:id/header_account
${btnSair}                      id=com.itau:id/close_app
#Menus
${menuHome}                     id=com.itau:id/tab_bar_home
${menuExtrato}                  id=com.itau:id/tab_bar_statement
${menuTransacoes}               id=com.itau:id/tab_bar_transactions
${menuProdutos}                 id=com.itau:id/txt_icon_services
${menuAjuda}                    id=com.itau:id/tab_bar_attendance
#extrato pix
${menuPix}                      xpath=//android.widget.Button[@content-desc="Pix"]/android.view.ViewGroup
${txtMenuPix}                   id=com.itau:id/pix_central_collapse_toolbar_title
${extratoPix}                   xpath=//android.widget.Button[@content-desc="extrato Pix"]
${meusLimites}                  xpath=//android.widget.Button[@content-desc="meus limites"]
#Onboarding
${btnFechar}                    id=com.itau:id/close_coach_mark2               
${msBemVindo}                   xpath=//android.widget.LinearLayout[@content-desc="bem-vindo ao seu novo extrato"]
${btnConfVisu}                  id=com.itau:id/previous_button_coachmark
${btnDetalhada}                 id=com.itau:id/tv_detail_button
${btnResumida}                  id=com.itau:id/tv_resumed_button
${btnAvancar}                   id=com.itau:id/previous_button_coachmark
${btnVerExtrato}                id=com.itau:id/previous_button_coachmark
#Contestação
${fechaProdutos}                xpath=//android.widget.Button[@content-desc="fechar"]
${txtPrinCategorias}            id=com.itau:id/main_categories_title_name
${menuCartoes}                  id=com.itau:id/constraint_card_view_dash_item
${txtTelaCartoes}               id=com.itau:id/text_title
${btnVoltaHome}                 id=com.itau:id/back_button
${menuContestarCompras}         xpath=//android.widget.Button[@content-desc="contestar compras"]/android.view.ViewGroup
${txtMenuContestar}             id=com.itau:id/typefacedTextView4
${btnSegueContestar}            xpath=//android.widget.Button[@content-desc="confirmar para finalizar"]

***Keywords***
Quando Acessar o Menu do Extrato
    E fechar os alertas e informativos
    Wait Until Element Is Visible                   ${menuDoUsuario}
    Wait Until Element Is Visible                   ${menuExtrato}  
    Click Element                                   ${menuExtrato}
    sleep                                           15
    E Validar a Tela de Extrato do Cliente

Realizar Logout do Cliente
    Click Element                                   ${menuHome}
    Wait Until Element Is Visible                   ${nomeUsuario}
    Click Element                                   ${nomeUsuario} 
    Wait Until Element Is Visible                   ${btnSair}
    Click Element                                   ${btnSair}
    sleep                                           5