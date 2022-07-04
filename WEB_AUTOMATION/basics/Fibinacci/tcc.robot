*** Settings ***
Library        fibi.py




*** Test Cases ***
Calling function from python
    ${value}=        fibinacci of a number    ${7}
    #Should Be Equal    ${value}    ${2}