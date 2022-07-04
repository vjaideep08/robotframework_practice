*** Settings ***
Library        SeleniumLibrary




*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com




*** Test Cases ***
InputBoxTesting
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store 
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email"}    Set Variable    id:Email
    ${"password"}    Set Variable    id:Password

    Element Should Be Visible    ${"email"}
    Element Should Be Enabled    ${"email"}

    Input Text    ${"email"}    simplyjai08@gmal.com
    Sleep    5
    Clear Element Text    ${"email"}
    Sleep    5
    Close Browser
    
    




*** Keywords ***
