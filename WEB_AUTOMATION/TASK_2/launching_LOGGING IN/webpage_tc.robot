*** Settings ***
Library        SeleniumLibrary


*** Variables ***




*** Test Cases ***
LoginTestcase
    #create webdriver     chrome executable_path="C:\Program Files\Python39\Scripts\chromedriver.exe"
    open browser       https://demo.nopcommerce.com/   chrome  
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text     id:Email        simplyjai08@gmail.com 
    input text     id:Password        123456
    click element     xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    Set Browser Implicit Wait    10  #for the framework to see all the elements
    #close browser





*** Keywords ***