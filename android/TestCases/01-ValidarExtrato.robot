***Settings***
Metadata    Version     1.0.0.0             
Metadata    Author      carvahpkd
Metadata    Platform    Android           
Documentation       Como usuário do SuperApp
            ...     Necessito validar os fluxos de consulta da timeline
            ...     E as funcionalidades devem corresponder com o perfil do cliente

Resource            ../Resources/base.robot

Test Setup          Abrir Aplicativo
Test Teardown       Fechar Aplicativo

***Test Cases***
Cenario 01: Filtrar Lançamentos do Extrato Conta Corrente Mobile
   [tags]      cenario1
   Dado que o Cliente Acesse a Timeline com Conta Padrão
   E Informar a Senha de Acesso
   Quando Acessar o Menu do Extrato
   Então realiza a validação dos filtros do extrato timeline

Cenario 02: Detalhar e Categorizar Lançamentos de Conta Corrente
   [tags]      cenario2
   Dado que o Cliente Acesse a Timeline com Conta Padrão
   E Informar a Senha de Acesso
   Quando Acessar o Menu do Extrato
   Então realizar o detalhe e categorização dos lançamentos da timeline

Cenario 03: Validar Informações do Header de Contas
   [tags]      cenario3
   Dado que o Cliente Acesse a Timeline com Conta de Lis Contratado
   E Informar a Senha de Acesso
   Quando Acessar o Menu do Extrato
   Então validar o box de Limites Contratados pelo Cliente

Cenario 04: Exportar Extrato Timeline em PDF
   [tags]      cenario4
   Dado que o Cliente Acesse a Timeline com Conta de Lis Contratado
   E Informar a Senha de Acesso
   Quando Acessar o Menu do Extrato
   Então validar a exportação por período do extrato em PDF

 