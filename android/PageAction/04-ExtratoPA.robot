***Settings***
Resource            ../Resources/base.robot

***Variables***
#Configurações
${abaMeuExtrato}                        xpath=//android.widget.LinearLayout[@content-desc="meu extrato"]
${engrenagem}                           xpath=//android.widget.Button[@content-desc="configurações"]
${timelineOne}                          xpath=//android.widget.Button[@content-desc="ir para a Timeline One"]
${btnVoltarTimeline}                    id=com.itau:id/pfm_config_back_icon
${btnVoltarConfig}                      id=com.itau:id/buttonIcon
#Header Extrato
${logoItau}                             id=com.itau:id/header_logo
${extratoContaCorrente}                 xpath=//android.widget.TextView[@text="conta corrente"]
${saldoConta}                           xpath=//android.widget.TextView[@text="saldo em conta"]
${valorSaldoConta}                      id=com.itau:id/header_value
${saldoOutrasContas}                    xpath=//android.view.ViewGroup[@content-desc="ver detalhes do saldo em outras contas"]
#Box Limites
${limiteConta}                          xpath=//android.widget.TextView[@text="Limite da Conta"]
${valorDisponivel}                      id=com.itau:id/information_adapter_value
${detalhesLimites}                      id=com.itau:id/information_adapter_action_icon
${msgLisParcial}                        xpath=//android.widget.TextView[@text="você está utilizando o seu Limite da Conta."]
${msgLisTotal}                          xpath=//android.widget.TextView[@text="você ultrapassou o seu Limite da Conta e pode ter cobrança de tarifa."]
#Lançamentos
${menuLancamentos}                      xpath=//android.widget.TextView[@text="lançamentos"]
${abaRecentes}                          xpath=//android.widget.TextView[@text="recentes"]
${abaFuturos}                           xpath=//android.widget.TextView[@text="futuros"]
${dataDia}                              id=com.itau:id/list_header_adapter_title
#Detalhes Lançamentos
${sairDetalhes}                         id=com.itau:id/buttonIcon
${iconeCategoria}                       id=com.itau:id/detail_header_icon
${literalTransacao}                     id=com.itau:id/detail_header_title
${nomeCategoria}                        id=com.itau:id/detail_header_sub_title
${dataTransacao}                        id=com.itau:id/detail_header_date
${lancamentoSaida}                      xpath=//android.widget.TextView[contains(@text, 'saída de conta corrente')]
${lancamentoEntrada}                    xpath=//android.widget.TextView[contains(@text, 'entrada de conta corrente')] 
${lancamentoFuturo}                     xpath=//android.widget.TextView[contains(@text, 'lançamento futuro')]
${dataAgendamentoFuturo}                id=com.itau:id/detail_header_date
${valorTransacao}                       xpath=//android.widget.TextView[contains(@text, 'valor')] 
${btnMinhasFinanças}                    xpath=//android.widget.Button[@content-desc="Minhas Finanças"]
${btnComprovantes}                      xpath=//android.widget.Button[@content-desc="comprovantes"]
#Categorias
${btnEditarCategoria}                   xpath=//android.widget.Button[@content-desc="categoria, editar"]
${editarCategoria}                      xpath=//android.widget.TextView[contains(@text, 'editar')]
${buscaCategoria}                       id=com.itau:id/editText
${labelGastos}                          xpath=//android.widget.TextView[contains(@text, 'onde seu gasto fica melhor categorizado?')]
${labelRendas}                          xpath=//android.widget.TextView[contains(@text, 'onde sua entrada fica melhor categorizada?')]
${txtAlteraCategoria}                   xpath=//android.widget.TextView[contains(@text, 'alterar categoria')]
${btnFecharAlteraCategoria}             id=com.itau:id/buttonIcon
${msgAlteracaoCategoria}                id=com.itau:id/categories_update_description
${btnCancelarCategoria}                 xpath=//android.widget.Button[@content-desc="cancelar categoria"]
${btnConfirmarCategoria}                xpath=//android.widget.Button[@content-desc="confirmar categoria"]
${btnFechaTrocaCategoria}               id=com.itau:id/buttonIcon
#categorias saidas
${checksEstorno}                        xpath=//android.widget.TextView[contains(@text, 'estorno')]
${checksGastos}                         xpath=//android.widget.Button[@content-desc="outros gastos de animais, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksPetshop}                        xpath=//android.widget.Button[@content-desc="pet shop, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksBares}                          xpath=//android.widget.Button[@content-desc="bares e bebidas, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksCafeteria}                      xpath=//android.widget.Button[@content-desc="cafeteria, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksEletronico}                     xpath=//android.widget.Button[@content-desc="eletrônicos, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksArtEsport}                      xpath=//android.widget.Button[@content-desc="artigos esportivos, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher
${checksRestaurantes}                   xpath=//android.widget.Button[@content-desc="restaurantes, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
#categorias entradas
${checksCripto}                         xpath=//android.widget.Button[@content-desc="criptomoedas, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksPoupanca}                       xpath=//android.widget.Button[@content-desc="poupança, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksReceiNeg}                       xpath=//android.widget.Button[@content-desc="receitas de negócios, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
${checksBonus}                          xpath=//android.widget.Button[@content-desc="bônus, não selecionado"]/android.view.ViewGroup/android.widget.RadioButton/android.widget.ViewSwitcher/android.widget.TextView
#selecionar lançamento pelo index
${selectLancamentoUm}                   xpath=//android.widget.Button[contains(@index, '5')]
${selectLancamentoDois}                 xpath=//android.widget.Button[contains(@index, '7')]
${selectLancamentoTres}                 xpath=//android.widget.Button[contains(@index, '9')]
${selectLancamentoQuatro}               xpath=//android.widget.Button[contains(@index, '11')]
${selectLancamentoCinco}                xpath=//android.widget.Button[contains(@index, '12')]
 
***Keywords***
E Validar a Tela de Extrato do Cliente
    sleep                                              6
    Wait Until Element Is Visible                      ${logoItau}
    Wait Until Element Is Visible                      ${saldoConta}
    Wait Until Element Is Visible                      ${valorSaldoConta}
 
# ======== DETALHE E CATEGORIZAÇÃO =============
Então realizar o detalhe e categorização dos lançamentos da timeline
    Rolar para Baixo ate encontrar elemento            ${btnFiltros}
    Click Element                                      ${btnFiltros}
    sleep                                              6
    Wait Until Element Is Visible                      ${labelFiltros} 
    Click Element                                      ${selecionarEntradas}
    Click Element                                      ${btnFiltrarLancamentos}
    sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoUm}
    Click Element                                      ${selectLancamentoUm}
    sleep                                              6
    Wait Until Element Is Visible                      ${iconeCategoria}                       
    Wait Until Element Is Visible                      ${literalTransacao}
    Wait Until Element Is Visible                      ${nomeCategoria}
    Wait Until Element Is Visible                      ${dataTransacao}
    Wait Until Element Is Visible                      ${lancamentoSaida}
    Wait Until Element Is Visible                      ${valorTransacao}
    Click Element                                      ${btnEditarCategoria} 
    Wait Until Element Is Visible                      ${labelGastos}
    #Click Element                                      ${buscaCategoria}  
    #Input Text                                         ${buscaCategoria}     ${Categorias.estorno}
    #Click Element                                      ${checksEstorno}
    Rolar pra encontrar categoria saida
    Wait Until Element Is Visible                      ${txtAlteraCategoria}
    Wait Until Element Is Visible                      ${msgAlteracaoCategoria}
    Click Element                                      ${btnConfirmarCategoria}
    sleep                                              6
    Wait Until Element Is Visible                      ${sairDetalhes}
    Click Element                                      ${sairDetalhes}    
    sleep                                              6

    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Wait Until Element Is Visible                      ${abaFuturos}
    Click Element                                      ${abaFuturos}
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoDois}
    Click Element                                      ${selectLancamentoDois}
    sleep                                              6
    Wait Until Element Is Visible                      ${iconeCategoria}                       
    Wait Until Element Is Visible                      ${literalTransacao}
    Wait Until Element Is Visible                      ${nomeCategoria}
    Wait Until Element Is Visible                      ${dataAgendamentoFuturo}
    Wait Until Element Is Visible                      ${lancamentoFuturo}
    Wait Until Element Is Visible                      ${valorTransacao}
    Click Element                                      ${btnEditarCategoria} 
    Rolar pra encontrar categoria saida
    Wait Until Element Is Visible                      ${txtAlteraCategoria}
    Wait Until Element Is Visible                      ${msgAlteracaoCategoria}
    Click Element                                      ${btnConfirmarCategoria}
    sleep                                              6
    Wait Until Element Is Visible                      ${sairDetalhes}
    Click Element                                      ${sairDetalhes}
    sleep                                              6

    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              6
    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${selecionarEntradas}
    Click Element                                      ${selecionarSaidas}
    Click Element                                      ${btnFiltrarLancamentos}
    sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoNove} 
    Click Element                                      ${selectLancamentoNove}
    Wait Until Element Is Visible                      ${iconeCategoria}                       
    Wait Until Element Is Visible                      ${literalTransacao}
    Wait Until Element Is Visible                      ${nomeCategoria}
    Wait Until Element Is Visible                      ${dataTransacao}
    Wait Until Element Is Visible                      ${lancamentoEntrada}
    Wait Until Element Is Visible                      ${valorTransacao}
    Click Element                                      ${btnEditarCategoria} 
    Wait Until Element Is Visible                      ${labelRendas}
    Rolar pra encontrar categoria entrada
    Wait Until Element Is Visible                      ${txtAlteraCategoria}
    Wait Until Element Is Visible                      ${msgAlteracaoCategoria}
    Click Element                                      ${btnConfirmarCategoria}
    sleep                                              6
    Wait Until Element Is Visible                      ${sairDetalhes}
    Click Element                                      ${sairDetalhes}    
    sleep                                              6
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${menuLancamentos}
    Realizar Logout do Cliente

