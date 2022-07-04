*** Settings ***
Library        SeleniumLibrary


*** Variables ***




*** Test Cases ***
GmailTCase
    Open Browser        https://accounts.google.com/signin/v2/identifier?hl=en-GB&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession    chrome
    Input Text    id:identifierId    vjayadeep08@gmail.com
    Click Link    xpath:
    Input Text    name:password    alwaysandforever
    Click Link    xpath://*[@id="passwordNext"]/div/button/span

    




*** Keywords ***