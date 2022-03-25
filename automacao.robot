*** Settings ***

Documentation        Aqui estarao todos os cenarios de automação web do desafio

Library        SeleniumLibrary 

Test Teardown    Encerra sessão 


*** Test Cases ***
Cenario 1: Verificar se o elemento está visivel
      Na tela do caso de teste 
      Cliques 
      Verificação de visibilidade  

Cenario 2: Verificar se o elemento está na pagina
      [Tags]         dois 
      Na tela do caso de teste 
      Cliques
      Verificação de não presença
Cenario 3: Preencher campos    
      [Tags]         tres 
      Na tela do caso de teste 
      Preencher nome   
      Click Element  id=btn_one 
      Select Checkbox                 //*[@id="opt_three"]
      Page Should Contain Image    css=.img-responsive-center-block
      
        



***Keywords***
Na tela do caso de teste 
      Open Browser       url:blank            chrome
      Go To           https://wj-qa-automation-test.github.io/qa-test/
      Maximize Browser Window 
      Set Selenium Timeout           30

Cliques 
     
      Click Element  id=btn_one
      Click Element  id=btn_two 
      Click Element  id=btn_link

Verificação de visibilidade       
      Element Should Not Be Visible  id=btn_one
      Element Should Not Be Visible  id=btn_two
      Element Should Not Be Visible  id=btn_link

Verificação de não presença
     Page Should Not Contain  //*[@id="btn_one"]
     Page Should Not Contain  //*[@id="btn_two"]
     Page Should Not Contain  //*[@id="btn_link"]

Preencher nome
    Input Text  id=first_name      Pedro

Encerra sessão 
    Capture Page Screenshot
    Close Browser        



