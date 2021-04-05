*** Settings ***
Library    SeleniumLibrary     

Suite Setup    Log    I am inside Suite Setup    
Suite Teardown    Log    I am inside Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown     

Default Tags    Sanity

*** Test Cases ***
My First test case-FB login
    [Tags]    Smoke
    [Documentation]    Facebook Login Test Case
    Open Browser    https://www.facebook.com/    chrome
    Set Browser Implicit Wait    5
    CREDINPUT
    Close Browser
     
My Second test case
    Log    I am inside second test case    
    
MY Third test case
    Log    I am inside third test case    
    
My Fourth Test case
    Set Tags    Regression2
    Log    I am inside fourth test case   
  
My Fifth test case-EMS Pre-SIT
    Set Tags    Regression1
    Remove Tags    Regression1
   [Documentation]    EMS presit url login test case 
   ...    Access to list/dictionary using index/key in '@{CRED}[0]' is deprecated since RF 3.2.
   ...    Use scalar notation instead i.e: ${collection}[id/key]
 
    Open Browser    ${URL}    chrome  
    Sleep    5   Wait for the screen to load 
    #Input Text    name=loginfmt    @{CRED}[0]
    #Input Text    name=loginfmt    &{CRED1}[usename]
    #Input Text    name=loginfmt    ${collection}[0] 
    #Input Text    name=loginfmt    ${CRED3}[username]
    Input Text    name=loginfmt    ${username} 
    # Sleep    5   entering input email id   
    # Press Keys    name=loginfmt    ESCAPE     -- this code is used to press escape key after entering some text in a field
    Click Button    id=idSIButton9    
    Sleep    10   loading page after clicking NEXT button 
    Log    This is run by %{username} on %{os}    
    Close Browser
    
MySixthTestCase
    Log    I am inside sixth test case  
    
*** Variables ***
${URL}    https://ems.presit.na.jnj.com/#/
${username}    sreji@its.jnj.com
# ${collection}    sreji@its.jnj.com    Horison@4  
# ${CRED3}    username=sreji@its.jnj.com    password=Horison@4

# @{CRED}    sreji@its.jnj.com    Horison@4
# &{CRED1}    username=sreji@its.jnj.com    password=Horison@4

*** Keywords ***
CREDINPUT
    Input Text    id=email    sincymannil@gmail.com
    Input Password    id=pass    mummy@1991 
    Click Button    name=login   
    