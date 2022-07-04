***settings***
Library    fac.py

***test cases***

Calling function from python
    ${value}=    custom keyword    ${5}
    BuiltIn.Should Be Equal    factorial(n)    factorial(n)
