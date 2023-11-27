***Settings***
Resource            ../Resources/base.robot

***Variables***
#Filtrão
${btnFiltros}                       id=com.itau:id/tab_statements_filter_icon
${labelFiltros}                     xpath=//android.widget.TextView[contains(@text, 'filtros')]
${btnFecharFiltros}                 xpath=//android.widget.TextView[contains(@text, 'fechar')]
${txtTipoLancamento}                xpath=//android.widget.TextView[contains(@text, 'tipo de lançamentos')]
${txtEntradas}                      xpath=//android.widget.TextView[contains(@text, 'entradas')]
${selecionarEntradas}               xpath=//android.widget.CheckBox[@content-desc="entradas, padrão"]
${txtSaidas}                        xpath=//android.widget.TextView[contains(@text, 'saídas')]
${selecionarSaidas}                 xpath=//android.widget.CheckBox[@content-desc="saídas, padrão"]
${txtOrdemExibicao}                 xpath=//android.widget.TextView[contains(@text, 'ordem de exibição')]
${txtMaisRecentes}                  xpath=//android.widget.TextView[contains(@text, 'mais recentes primeiro')]
${checkMaisRecentes}                xpath=//android.widget.RadioButton[@content-desc="mais recentes primeiro, padrão"]
${txtMaisAntigos}                   xpath=//android.widget.TextView[contains(@text, 'mais antigos primeiro')]
${checkMaisAntigos}                 xpath=//android.widget.RadioButton[@content-desc="mais antigos primeiro"]
${txtPeriodo}                       xpath=//android.widget.TextView[contains(@text, 'período')]
${opt30dias}                        xpath=//android.widget.Button[@content-desc="30 dias, Não selecionado"]
${opt60dias}                        xpath=//android.widget.Button[@content-desc="60 dias, Não selecionado"]
${opt90dias}                        xpath=//android.widget.Button[@content-desc="90 dias, Não selecionado"]
${btnRedefinir}                     xpath=//android.widget.TextView[contains(@text, 'redefinir')]
${btnFiltrarLancamentos}            xpath=//android.widget.TextView[contains(@text, 'filtrar')]
#Exportar PDF
${btnExportar}                      xpath=//android.widget.Button[@content-desc="exportar PDF"]
${btnVoltarExtrato}                 id=com.itau:id/buttonIcon
${txtExportarExtrato}               xpath=//android.widget.TextView[contains(@text, 'exportar extrato')]
${txtSelecionePeriodo}              xpath=//android.widget.TextView[contains(@text, 'selecione o período que você quer exportar da conta Itaú')]
${exporta7Dias}                     xpath=//android.widget.TextView[contains(@text, 'últimos 7 dias ')]
${exporta15Dias}                    xpath=//android.widget.TextView[contains(@text, 'últimos 15 dias ')]
${exporta30Dias}                    xpath=//android.widget.TextView[contains(@text, 'últimos 30 dias ')]
${exporta60Dias}                    xpath=//android.widget.TextView[contains(@text, 'últimos 60 dias ')]
${exporta90Dias}                    xpath=//android.widget.TextView[contains(@text, 'últimos 90 dias ')]
${txtPeriodoSelecionado}            id=com.itau:id/share_pdf_adapter_sub_title
${txtInformativo}                   xpath=//android.widget.TextView[contains(@text, 'Para períodos anteriores, acesse o seu extrato pelo computador no site do Itaú.')]
${btnGerarExtrato}                  xpath=//android.widget.Button[@content-desc="gerar extrato"]
${janelaNativa}                     id=android:id/title
${vizualizaArquivo}                 xpath=//android.widget.TextView[contains(@text, 'Visualizador de PDF do Drive')]
#Selecionar Lançamentos
${selectLancamentoOito}             xpath=//android.widget.Button[contains(@index, '01')]
${selectLancamentoNove}             xpath=//android.widget.Button[contains(@index, '15')]
${selectLancamentoDez}              xpath=//android.widget.Button[contains(@index, '10')]
${selectLancamentoOnze}             xpath=//android.widget.Button[contains(@index, '11')]
${selectLancamentoDoze}             xpath=//android.widget.Button[contains(@index, '12')]

***Keywords***
# ============ REGRESSIVO FILTROS DE PESQUISA ============
Então realiza a validação dos filtros do extrato timeline
    Rolar um pouco para Baixo                          ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              5
    Wait Until Element Is Visible                      ${labelFiltros} 
    Click Element                                      ${selecionarEntradas}
    Click Element                                      ${btnFiltrarLancamentos}
    Sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoOito}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              5
    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${selecionarEntradas}
    Click Element                                      ${selecionarSaidas}
    Click Element                                      ${btnFiltrarLancamentos}
    Sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoNove} 
    Rolar para Cima ate encontrar elemento             ${selectLancamentoOito}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Baixo ate encontrar elemento            ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              5
    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${btnRedefinir}
    Rolar para Baixo ate encontrar elemento            ${opt30dias}
    Click Element                                      ${opt30dias}
    Click Element                                      ${checkMaisAntigos}
    Click Element                                      ${btnFiltrarLancamentos}
    Sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoDez}
    Rolar para Cima ate encontrar elemento             ${selectLancamentoOito}

    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              6
    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${btnRedefinir}
    Rolar para Baixo ate encontrar elemento            ${opt60dias}
    Click Element                                      ${opt60dias}
    Click Element                                      ${checkMaisAntigos}
    Click Element                                      ${btnFiltrarLancamentos}
    Sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoDez}
    Rolar para Cima ate encontrar elemento             ${selectLancamentoOito}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              6
    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${btnRedefinir}
    Rolar para Baixo ate encontrar elemento            ${opt90dias}
    Click Element                                      ${opt90dias}
    Click Element                                      ${checkMaisAntigos}
    Click Element                                      ${btnFiltrarLancamentos}
    Sleep                                              6
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoDez}
    Rolar para Cima ate encontrar elemento             ${selectLancamentoOito}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Click Element                                      ${btnFiltros}
    Sleep                                              6

    Wait Until Element Is Visible                      ${labelFiltros}
    Click Element                                      ${btnRedefinir}
    Click Element                                      ${btnFiltrarLancamentos}
    sleep                                              6
    Rolar para Cima ate encontrar elemento             ${menuLancamentos}
    Wait Until Element Is Visible                      ${abaFuturos}
    Click Element                                      ${abaFuturos}
    Rolar para Baixo ate encontrar elemento            ${selectLancamentoDoze}
    Rolar para Cima ate encontrar elemento             ${btnFiltros}
    Rolar para Cima ate encontrar elemento             ${menuLancamentos}
    Wait Until Element Is Visible                      ${abaRecentes}
    Click Element                                      ${abaRecentes}
    sleep                                              3

    Realizar Logout do Cliente

# ============ EXPORTAR EXTRATO PDF ============
Então validar a exportação por período do extrato em PDF
    Rolar para Baixo ate encontrar elemento            ${btnExportar}
    Wait Until Element Is Visible                      ${btnExportar} 
    Click Element                                      ${btnExportar}
    sleep                                              3
    Wait Until Element Is Visible                      ${txtExportarExtrato}   
    Wait Until Element Is Visible                      ${txtSelecionePeriodo}  
    Click Element                                      ${exporta7Dias}
    Wait Until Element Is Visible                      ${txtPeriodoSelecionado} 
    Click Element                                      ${btnGerarExtrato}
    sleep                                              5
    Wait Until Element Is Visible                      ${janelaNativa}
    Click Element                                      ${vizualizaArquivo}
    sleep                                              7
    Go Back

    Click Element                                      ${exporta15Dias}
    Wait Until Element Is Visible                      ${txtPeriodoSelecionado} 
    Click Element                                      ${btnGerarExtrato}
    sleep                                              5
    Wait Until Element Is Visible                      ${janelaNativa}
    Click Element                                      ${vizualizaArquivo}
    sleep                                              7
    Go Back

    Click Element                                      ${exporta30Dias}
    Wait Until Element Is Visible                      ${txtPeriodoSelecionado} 
    Click Element                                      ${btnGerarExtrato}
    sleep                                              5
    Wait Until Element Is Visible                      ${janelaNativa}
    Click Element                                      ${vizualizaArquivo}
    sleep                                              7
    Go Back

    Click Element                                      ${exporta60Dias}
    Wait Until Element Is Visible                      ${txtPeriodoSelecionado} 
    Click Element                                      ${btnGerarExtrato}
    sleep                                              5
    Wait Until Element Is Visible                      ${janelaNativa}
    Click Element                                      ${vizualizaArquivo}
    sleep                                              7
    Go Back

    Click Element                                      ${exporta90Dias}
    Wait Until Element Is Visible                      ${txtPeriodoSelecionado} 
    Click Element                                      ${btnGerarExtrato}
    sleep                                              5
    Wait Until Element Is Visible                      ${janelaNativa}
    Click Element                                      ${vizualizaArquivo}
    sleep                                              7
    Go Back
    Go Back

    Realizar Logout do Cliente