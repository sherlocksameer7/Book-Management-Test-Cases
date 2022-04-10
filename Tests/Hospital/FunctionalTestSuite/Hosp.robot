*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}      http://127.0.0.1:5000

*** Test Cases ***
1:Admin Login Test
    [Documentation]  This Test is used for Admin Login
    [Tags]  Admin
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

2:Add Patient test
    [Documentation]  This Test is used to Add a Patient
    [Tags]  Admin
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Test 2 Name
    sleep  1s
    Test 2 MobileNumber
    sleep  1s
    Test 2 Age
    sleep  1s
    Test 2 Address
    sleep  1s
    Test 2 DOB
    sleep  1s
    Test 2 Place
    sleep  1s
    Test 2 Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close Browser


3.View All Patients test
    [Documentation]  This Test is used to Add a Patient
    [Tags]  Admin
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[2]/a
    sleep  2s
    close browser

4.Search for Patient test
    [Documentation]  This Test is used to Search a Patient
    [Tags]  Admin with Patient
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[3]/a
    sleep  2s
    Test 4 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div[3]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

5.Update Patient Details test
    [Documentation]  This Test is used to Edit Patient Details
    [Tags]  Admin Details
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[4]/a
    sleep  2s
    Test 5 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    Test 5 Name
    sleep  1s
    Test 5 MobileNumber
    sleep  1s
    Test 5 Age
    sleep  1s
    Test 5 Address
    sleep  1s
    Test 5 DOB
    sleep  1s
    Test 5 Place
    sleep  1s
    Test 5 Pincode
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    close browser

6.Delete Patient Test
    [Documentation]  This Test is used to Delete a Patient
    [Tags]  Admin Delete
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[5]/a
    sleep  2s
    Test 2 MobileNumber
    sleep  1s
    click Button   xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s
    close browser

7.Admin Logout Page
    [Documentation]  This Test is used for Admin to Logout
    [Tags]  Admin Logout
    Open Browser    ${web_url}   chrome
    Maximize Browser Window
    sleep  2s
    Test 1 admname
    Test 1 Admpass
    sleep  1s
    click Button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    click Element   xpath=//html/body/nav[2]/div/div/ul/li[6]/a
    sleep  2s
    close browser

*** Keywords ***
Test 1 admname
    Input Text  name:username  admin

Test 1 Admpass
    Input Text  name:password  12345

Test 2 Name
    Input Text  name:name  Akash

Test 2 MobileNumber
    Input Text  name:mobnumber  9345678021

Test 2 Age
    Input Text  name:age   20

Test 2 Address
    Input Text  name:address  54

Test 2 Dob
    Input Text  name:dob   10-08-2001

Test 2 Place
    Input Text  name:place  Chennai

Test 2 Pincode
    Input Text  name:pincode    600028

Test 4 MobileNumber
    Input Text  name:mobnumber  8220062948

Test 5 Name
    Input Text  name:name  Rilvi

Test 5 MobileNumber
    Input Text  name:mobnumber  8220982267

Test 5 Age
    Input Text  name:age   23

Test 5 Address
    Input Text  name:address  35

Test 5 Dob
    Input Text  name:dob   28-12-1998

Test 5 Place
    Input Text  name:place  Pallapatti

Test 5 Pincode
    Input Text  name:pincode    635207
