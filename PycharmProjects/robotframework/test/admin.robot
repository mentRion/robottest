*** Settings ***

Documentation  Login to the system
Library  SeleniumLibrary
Library  DateTime


*** Variables ***
${url}  http://127.0.0.1:8000/bhcadmin/



*** Keywords ***



*** Test Cases ***
ed Health Center Info System Admin
    Open Browser                        http://127.0.0.1:8000/bhcadmin/  Chrome
    Wait Until Element Is Visible       id:email  timeout=5




Login - Input Email for Logging in the Admin
    Input Text                          id:email    testuser@email.com
    Click Element                       xpath://button[contains(.,'Send OTP')]
    Wait Until Element Is Visible       id:otp

Login - Input OTP to Verify Account
    Input Text                          id:otp    0000
    Click Element                       xpath://button[contains(.,'Verify')]

Login - Input Password for Confirmation
    Input Text                          id:id_password1    iamuser123
    Click Element                       xpath://button[contains(.,'submit')]





Documents
    Click Element  xpath://span[contains(.,'Documents')]





Record for Morbidity
    Click Element    xpath://div/div[2]/div

Click Add
    Click Element  xpath=//span[contains(.,'add_box')]

Type First Name
    Input Text  id=id_first_name   test

Type Second Name
    Input Text  id=id_last_name  test

Click Submit
    Click Element  xpath=//button[contains(.,'Submit')]

Click Edit
    Click Element  xpath=//span[contains(.,'edit')]

Click Submit
    Click Element  xpath=//button[contains(.,'Submit')]

Click Delete
    Click Element  xpath=//span[contains(.,'delete')]

Click Yes
    Click Element  xpath=//input[2]

Record for Morbidity - Back document
    Click Element    xpath://span[contains(.,'arrow_back')]




Child Masterlist
    Click Element    xpath://div/div[2]/div/div/div[2]/div

Click the Plus
    Click Element  xpath=//a[2]/span

Type First Name
    Input Text  id=id_first_name  test

Type Second Name
    Input Text  id=id_last_name  test

Click Submit
    Wait Until Element Is Visible     xpath=//div/button
    Click Element  xpath=//div/button

Click the Eye
    Click Element  xpath=//td[4]/a/span

Click Edit
    Click Element  xpath=//a[2]/span

Click Submit
   Click Element  xpath=//div/button

Click the Eye
    Click Element  xpath=//td[4]/a/span

Click the Trash
    Click Element  xpath=//a[3]/span

Click Yes to Confirm
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Visit Log Book
    Click Element    xpath://div[2]/div/div/div/div[2]/div/p

click add visit log book
    Click Element  xpath=//a[2]/span

click the text box
    Click Element  id=id_name

type the name of the log book
    Input Text  xpath=//div[2]/input   name

click submit
    Click Element  xpath=//div/button

click edit log book
    Click Element  xpath=//div[2]/div/a[3]/span

submit the new name
    Click Element  xpath=//div/button

delete the log book
    Click Element  xpath=//a[4]/span

yes delete the log book
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Pregnancy Form
    Click Element    xpath://h5[contains(.,'Masterlist for Pregnancy and Newborn Baby')]

click the add new form
    Click Element  xpath=//a[2]/span

type the first name
    Input Text  id=id_first_name  test

type the second name
    Input Text  id=id_last_name  test

click submit
    Click Element  xpath=//form/button

view individual form
    Click Element  xpath=//td[5]/a/span

click edit form
    Click Element  xpath=//a[2]/span

click submit
    Click Element  xpath=//div/button

click the delete form
    Click Element  xpath=//a[3]/span

click yes to confirm
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Itr Checkup Masterlist
    Click Element    xpath://div[3]/div[2]/div/div/div[2]/div

Back
    Click Element    xpath://span[contains(.,'arrow_back')]









Itr for Widowed
    Click Element    xpath://div[4]/div/div/div/div[2]/div/p/small
    Click Element    xpath://span[contains(.,'arrow_back')]

Appointments
    Click Element    xpath://li[4]/a

Medicine
    Click Element    xpath://li[5]/a

Schedules
    Click Element    xpath://li[6]/a

Feed
    Click Element    xpath://li[7]/a

QA
    Click Element    xpath://li[8]/a

Archive
    Click Element    xpath://span[contains(.,'Archive')]


