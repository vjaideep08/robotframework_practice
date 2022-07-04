*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
LogginginTestcase
    #create webdriver     chrome     executable_path="C:\Program Files\Python39\Scripts\chromedriver.exe"
    Open Browser        https://demo.nopcommerce.com/        chrome
    #Set Browser Implicit Wait    5
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text    id:Email    simplyjai08@gmail.com
    Input Text    id:Password    123456
    Click Link     xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button    #login after inserting
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a   #logout
    #Click Element    link=Log in
    #Click Element    link=Log out
    Log    Test Done
    Close Browser
            
    
    