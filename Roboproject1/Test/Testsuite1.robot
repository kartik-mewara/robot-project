*** Settings ***
Library    SeleniumLibrary    
Suite Setup        log        i am inside test suit setup
Suite Teardown        log        i am inside test suit teardown
test setup        log        i am inside test setup
test teardown        log        i am inside test teardown

Default Tags    kartik

*** Test Cases ***
Myfirsttest
    [Tags]        holy smoke
    Log    hello world
secontest
    set tags        regression1
    log        this second test
    remove tags       regression1
firstseleniumtest
    openitall
    
fourttest
    log        i am inside fourth test case
# SampleLoginTest
    # # log        this is executed by %{username}
    # open browser        https://opensource-demo.orangehrmlive.com/        chrome
    # set browser implicit wait        5
    # input text         id=txtUsername        @{username}[0]
    # input password        id=txtPassword        &{dict}[pass]
    # click button        id=btnLogin
    # click element        id=welcome
    # click element        link=Logout
    # close browser
    

*** Variables ***
# scalar variable
${url}         https://google.com 
   
# list variable
@{usrname}        Admin        admin123

# dictionary
&{dicts}        username=Admin        pass=admin123

*** Keywords ***
openitall
    open browser        ${url}         chrome 
    set browser implicit wait        5
    input text        name=q        kartik mewara
    press keys       name=q      ENTER
    sleep        2
    Close Browser  
    
    
