*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${admin_page}   http://127.0.0.1:5000
${admin}    admin
${pass}     9875



*** Test Cases ***
Admin login page
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        close Browser

Admin Add books
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        Add Book
        Add Author
        Add Category
        Add Price
        Add Publisher
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser

Admin View all
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
        close Browser

Admin Search book
    open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
        Search Book
        Click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        Close Browser

Admin Edit book
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[4]/a
        Edit book
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        edit newBook
        edit newAuthor
        edit newCategory
        edit newprice
        edit newpublisher
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        close Browser

Admin Delete book
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[5]/a
        delete book
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        close Browser

Admin logout
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[6]/a
        Close Browser

User Registration
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        sleep  2s
        click link  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[4]/td[2]/a
        sleep  3s
        user Add name
        sleep  1s
        user add address
        sleep  1s
        user Add email
        sleep  1s
        user add phone
        sleep  1s
        user Add pass
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser

user login
        open Browser    http://127.0.0.1:5000/userlogin  chrome
        Maximize Browser Window
        user log in email
        user log in pass
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        Close Browser

user view all
        open Browser    http://127.0.0.1:5000/userlogin  chrome
        Maximize Browser Window
        user log in email
        user log in pass
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[1]/a
        sleep  2s
        Close Browser

user search book
        open Browser   http://127.0.0.1:5000/userlogin   chrome
        Maximize Browser Window
        user log in email
        user log in pass
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
        user Search book
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        close Browser

user log out
        open Browser    http://127.0.0.1:5000/userlogin  chrome
        Maximize Browser Window
        user log in email
        user log in pass
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
        sleep  1s
        close Browser


*** Keywords ***
admin login
    Input Text  name:uname   ${admin}

admin pass
    Input Text  name:pass   ${pass}

Add Book
    Input Text  name:bname  Secrets of the Dumbledore

Add Author
    Input Text  name:author  J.K Rowling

Add Category
    Input Text  name:category  fantasy

Add Price
    Input Text  name:price  1000

Add Publisher
    Input Text  name:publisher  Warner Bro's

Search Book
    Input Text  name:bname  Secrets of the Dumbledore

Edit book
    Input Text  name:bname  Something I Never Told You

edit newBook
    Input Text  name:bname  Transformers and the MoonKnight

edit newAuthor
    Input Text  name:author  Stephen

edit newCategory
    Input Text  name:category  Science Fiction

edit newprice
    Input Text  name:price  1000

edit newpublisher
    Input Text  name:publisher  Thomson

delete book
    Input Text  name:bname  Transformers and the MoonKnight

user Add name
    Input Text  name:name  Sherlock

user add address
    Input Text  name:add  312-B

user Add email
    Input Text  name:email  sherlocksameer17@gmail.com

User Add phone
    Input Text  name:phone  0707070707

user Add pass
    Input Text  name:pass  12345

user log in email
    Input Text  name:email  arijitsameers@gmail.com

user log in pass
    Input Text  name:pass  98765

user Search book
    Input Text  name:bname  Harry Potter
