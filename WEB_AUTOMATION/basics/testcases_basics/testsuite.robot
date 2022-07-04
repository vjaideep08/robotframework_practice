*** Settings ***
Library        func.py



*** Test Cases ***
Calling function from python
    ${value}=         custom keyword    ${1}
    Should Be Equal    ${value}    ${2}