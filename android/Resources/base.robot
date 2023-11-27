***Settings***
Resource            ../PageAction/01-LoginPA.robot
Resource            ../PageAction/02-AlertaPA.robot
Resource            ../PageAction/03-HomePA.robot
Resource            ../PageAction/04-ExtratoPA.robot
Resource            ../PageAction/05-FiltrosPA.robot
Resource            ../PageAction/06-LisPA.robot 
Resource            ../Resources/Environment/swipes.robot
Variables           ../Resources/Environment/env.yaml

Library             AppiumLibrary
Library             String

***Keywords***
Abrir Aplicativo
    Set Appium Timeout      20
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=uiAutomator2
    ...                     platformName=Android
    ...                     deviceName=0059001450
    ...                     autoGrantPermissions=true
    ...                     autoAcceptAlerts=true
    ...                     noReset=true
    ...                     fullReset=false
    ...                     appPackage=com.itau
    ...                     appActivity=br.com.itau.pf.ui.activity.SplashActivity
    ...                     app=${EXECDIR}/app/app-itau.apk

    Acessar Minha Conta
    Selecionar Ambiente

Fechar Aplicativo
    Capture Page Screenshot
    Close Application



