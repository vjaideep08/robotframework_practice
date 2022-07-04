#contain testcases

*** Settings ***
Library        SeleniumLibrary
Suite Teardown        Close Browser



*** Test Cases ***

TESTCASE1
    open gmail application
    sign in to gmail




*** Keywords ***

open gmail application
    Open Browser    https://accounts.google.com/signin/v2/identifier?hl=en-GB&continue=https%3A%2F%2Fmail.google.com%2Fmail&service=mail&ec=GAlAFw&flowName=GlifWebSignIn&flowEntry=AddSession    chrome

sign in to gmail
    Sleep    3
    Input Text    id:identifierId    vjayadeep08@gmail.com
    Click Element    (//*[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"])[1]
    Sleep    300
    Click Element    //input[@autocomplete="current-password"] 
    Input Text    //input[@autocomplete="current-password"]    alwaysandforever
    Click Element    (//*[@class="VfPpkd-LgbsSe VfPpkd-LgbsSe-OWXEXe-k8QpJ VfPpkd-LgbsSe-OWXEXe-dgl2Hf nCP5yc AjY5Oe DuMIQc qIypjc TrZEUc lw1w4b"])[1]
    Sleep    50



*** Variables ***
${username_field} =     //input[@id="identifierId"]
${password_field} =     //input[@autocomplete="current password"]
${next_button} =     (//*[@class="RveJvd snByac"])[1]

