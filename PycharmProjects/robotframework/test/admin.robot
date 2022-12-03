*** Settings ***

Documentation  Login to the system
Library  SeleniumLibrary
Library  DateTime


*** Variables ***
${url}  http://127.0.0.1:8000/bhcadmin/



*** Keywords ***



*** Test Cases ***
Web Health Center Info System Admin
    Open Browser                        http://brgysanjose.gocenter.online/bhcadmin/  Chrome
    Wait Until Element Is Visible       id:email  timeout=5


Login - Input Email for Logging in the Admin
    Input Text                          id:email    ross.recto.c@bulsu.edu.ph
    Click Element                       xpath://button[contains(.,'Send OTP')]
    Wait Until Element Is Visible       id:otp

Login - Input OTP to Verify Account
    Input Text                          id:otp    0000
    Click Element                       xpath://button[contains(.,'Verify')]

Login - Input Password for Confirmation
    Input Text                          id:id_password1    adminacc123
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

Click Add visit log book
    Click Element  xpath=//a[2]/span

Click the Text Box
    Click Element  id=id_name

Type the Name of the Log Book
    Input Text  xpath=//div[2]/input   name

Click Submit
    Click Element  xpath=//div/button

Click Edit Log Book
    Click Element  xpath=//div[2]/div/a[3]/span

Submit the New Name
    Click Element  xpath=//div/button

Delete the Log Book
    Click Element  xpath=//a[4]/span

Yes Delete the Log Book
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Pregnancy Form
    Click Element    xpath://h5[contains(.,'Masterlist for Pregnancy and Newborn Baby')]

Click the Add New Form
    Click Element  xpath=//a[2]/span

Type the First Name
    Input Text  id=id_first_name  test

Type the Second Name
    Input Text  id=id_last_name  test

Click Submit to Add
    Click Element  xpath=//form/button

View Individual Form
    Click Element  xpath=//td[5]/a/span

Click Edit Form
    Click Element  xpath=//a[2]/span

Click Submit
    Click Element  xpath=//div/button

Click the Delete Form
    Click Element  xpath=//a[3]/span

Click Yes to Confirm
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Itr Checkup Masterlist
    Click Element    xpath://div[3]/div[2]/div/div/div[2]/div

Click the Plus to Add
    Click Element   xpath=//a[2]/span

Type First Name
    Input Text   xpath=//div[2]/div[2]/input  test

Type the Second Name
    Input Text   xpath=//div[3]/div[2]/input  test

Submit
    Click Element  xpath=//div/button

View Individual Form
    Click Element  xpath=//td[3]/a/span

Click Update
    Click Element  xpath=//a[2]/span

Click Submit to Confirm
    Click Element  xpath=//div/button

Click View Individual
    Click Element  xpath=//td[3]/a/span

Click Delete
    Click Element  xpath=//a[3]/span

Click Yes to Confirm
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]









Itr for Widowed
    Click Element    xpath://div[4]/div/div/div/div[2]/div/p/small

Click the Plus Sign to Add
    Click Element   xpath=//a[2]/span

Type the First Name
    Input Text   id=id_first_name  test

Type the Second Name
    Input Text   id=id_last_name  test

Click Submit to Add
    Click Element  xpath=//div/button

View Specific Form
    Click Element  xpath=//td[6]/a/span

Click the Edit to Change
    Click Element  xpath=//a[2]/span

Click Submit
    Click Element  xpath=//div/button

Click Delete
    Click Element  xpath=//a[3]/span

Click Yes to Confirm Deletion
    Click Element  xpath=//input[2]

Back
    Click Element    xpath://span[contains(.,'arrow_back')]





Appointments
    Click Element    xpath://li[4]/a

Click All Appointment to Load
    Click Element   xpath=//li/button

Click Pending Appointment to Load all Pending Appointment
    Click Element   xpath=//li[2]/button

Click Ongoing Appointment to Load all Ongoing Appointment
    Click Element   xpath=//li[3]/button

Click Done Appointment to Load the List of Finished Appointment
    Click Element   xpath=//li[4]/button

Click Rejected Appointment to Load the List of Rejected
    Click Element   xpath=//li[5]/button






Medicine
    Click Element    xpath://li[5]/a

Click Add Medicine
    Input Text  xpath=//div[2]/div/div/a/span   dawdawd

Type the Name
    Input Text  id=id_name  dawd

Type Class of Medicine
    Input Text  id=id_type   dsadas

Type the Description of the Medicine
    Input Text  id=id_description   dwa

Select the Expiry Date of the Medicine
    Input Text  id=id_expiration_date  2022-11-18

Type the Number of Stock
    Input Text  id=id_stock  12

Submit to Add the Medicine
    Click Element  xpath=//div/button

Click Edit
    Click Element  xpath=//a[2]/span

Click Cancel
    Click Element  xpath=//div[7]/div/a

Click Delete
    Click Element  xpath=//a[3]/span

Click Yes to Confirm
    Click Element  xpath=//input[2]




Schedules
    Click Element    xpath://li[6]/a

Click the Plus Sign to Add Schedule
    Click Element  xpath=//div[2]/div/div/a/span

Type the First Name
    Input Text   id=id_first_name   dawd

Type the Last Name
    Input Text   id=id_last_name   daw

Select the Starting Time of Work
    Input Text   id=id_work_time_from   03:13

Select the Ending Time of Work
    Input Text   id=id_work_time_to   03:13

Click Cancel
    Click Element  xpath=//form/a




Feed
    Click Element    xpath://li[7]/a

Click the Add
    Click Element   xpath=//div[2]/div/div/a/span

Type Feed the Title
    Input Text   xpath=//div[2]/input  dawd

Type Content
    Input Text   xpath=//textarea  dwadaw

Select Image
    Input Text   xpath=//div[3]/div[2]/input  C:\downloads\postgresql[2].png

Click Submit
    Click Element   xpath=//div/button





QA
    Click Element    xpath://li[8]/a

Click Message Icon
    Click Element     xpath=//i

Type Message
    Input Text    id=floatingTextarea    text
    
Click Send Icon to Show
    Click Element    xpath=//i





Archive
    Click Element    xpath://span[contains(.,'Archive')]

Click Medicine Archive
    Click Element   xpath=//div[2]/div/ul/li/a

Click Schedule Archive to Show
    Click Element   xpath=//div[2]/div/ul/li[2]/a

Click Feed Archive to Show
    Click Element   xpath=//div[2]/div/ul/li[3]/a

Click Morbidity Archive to Show
    Click Element   xpath=//a[contains(.,'Morbidity')]

Click Child Masterlist to Show
    Click Element   xpath=//div[2]/div/ul/li[5]/a

Click Visit Log Book to Show
    Click Element   xpath=//div[2]/div/ul/li[6]/a

Click Antigen Form to Show
    Click Element   xpath=//div[2]/div/ul/li[7]/a

Click Masterlist Pregnancy and Newborn to Show
    Click Element   xpath=//div[2]/div/ul/li[8]/a

Click ITR Check Up Masterlist to Show all Check ups
    Click Element   xpath=//div[2]/div/ul/li[9]/a

Click ITR for Widowed to Show
    Click Element   xpath=//li[10]/a

Click Child Masterlist to Show
    Click Element   xpath=//div[2]/div/ul/li[5]/a

Select Item to Restore
    Click Element   xpath=//input

Click Restore
    Click Element   xpath=//form/button

Click Yes to Confirm
    Click Element   xpath=//div[3]/button











