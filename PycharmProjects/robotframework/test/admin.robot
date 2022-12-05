*** Settings ***

Documentation  Login to the system
Library  SeleniumLibrary
Library  DateTime


*** Variables ***
${url}  http://brgysanjose.gocenter.online/bhcadmin/



*** Test Cases ***
Web Health Center Info System Admin
    Open Browser                        ${url}  Chrome
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





Documents - Record for Morbidity
    Click Element    xpath://div/div[2]/div

Documents - Click Add
    Click Element  xpath=//span[contains(.,'add_box')]

Documents - Type First Name
    Input Text  id=id_first_name   test

Documents - Type Second Name
    Input Text  id=id_last_name  test

Documents - Click Submit
    Click Element  xpath=//button[contains(.,'Submit')]

Documents - Click Edit
    Click Element  xpath=//span[contains(.,'edit')]

Documents - Click Submit
    Click Element  xpath=//button[contains(.,'Submit')]

Documents - Click Delete
    Click Element  xpath=//span[contains(.,'delete')]

Documents - Click Yes
    Click Element  xpath=//input[2]

Documents - Record for Morbidity - Back document
    Click Element    xpath://span[contains(.,'arrow_back')]




Child Masterlist
    Click Element    xpath://div/div[2]/div/div/div[2]/div

Child Masterlist - Click the Plus
    Click Element  xpath=//a[2]/span

Child Masterlist - Type First Name
    Input Text  id=id_first_name  test

Child Masterlist - Type Second Name
    Input Text  id=id_last_name  test

Child Masterlist - Click Submit
    Wait Until Element Is Visible     xpath=//div/button
    Click Element  xpath=//div/button

Child Masterlist - Click the Eye
    Click Element  xpath=//td[4]/a/span

Child Masterlist - Click Edit
    Click Element  xpath=//a[2]/span

Child Masterlist - Click Submit
   Click Element  xpath=//div/button

Child Masterlist - Click the Eye
    Click Element  xpath=//td[4]/a/span

Child Masterlist - Click the Trash
    Click Element  xpath=//a[3]/span

Child Masterlist - Click Yes to Confirm
    Click Element  xpath=//input[2]

Child Masterlist - Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Visit Log Book
    Click Element    xpath://div[2]/div/div/div/div[2]/div/p

Visit Log Book - Click Add visit log book
    Click Element  xpath=//a[2]/span

Visit Log Book - Click the Text Box
    Click Element  id=id_name

Visit Log Book - Type the Name of the Log Book
    Input Text  xpath=//div[2]/input   name

Visit Log Book - Click Submit
    Click Element  xpath=//div/button

Visit Log Book - Click Edit Log Book
    Click Element  xpath=//div[2]/div/a[3]/span

Visit Log Book - Submit the New Name
    Click Element  xpath=//div/button

Visit Log Book - Delete the Log Book
    Click Element  xpath=//a[4]/span

Visit Log Book - Yes Delete the Log Book
    Click Element  xpath=//input[2]

Visit Log Book - Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Pregnancy Form
    Click Element    xpath://h5[contains(.,'Masterlist for Pregnancy and Newborn Baby')]

Pregnancy Form - Click the Add New Form
    Click Element  xpath=//a[2]/span

Pregnancy Form - Type the First Name
    Input Text  id=id_first_name  test

Pregnancy Form - Type the Second Name
    Input Text  id=id_last_name  test

Pregnancy Form - Click Submit to Add
    Click Element  xpath=//form/button

Pregnancy Form - View Individual Form
    Click Element  xpath=//td[5]/a/span

Pregnancy Form - Click Edit Form
    Click Element  xpath=//a[2]/span

Pregnancy Form - Click Submit
    Click Element  xpath=//div/button

Pregnancy Form - Click the Delete Form
    Click Element  xpath=//a[3]/span

Pregnancy Form - Click Yes to Confirm
    Click Element  xpath=//input[2]

Pregnancy Form - Back
    Click Element    xpath://span[contains(.,'arrow_back')]








Itr Checkup Masterlist
    Click Element    xpath://div[3]/div[2]/div/div/div[2]/div

Itr Checkup Masterlist - Click the Plus to Add
    Click Element   xpath=//a[2]/span

Itr Checkup Masterlist - Type First Name
    Input Text   xpath=//div[2]/div[2]/input  test

Itr Checkup Masterlist - Type the Second Name
    Input Text   xpath=//div[3]/div[2]/input  test

Itr Checkup Masterlist - Submit
    Click Element  xpath=//div/button

Itr Checkup Masterlist - View Individual Form
    Click Element  xpath=//td[3]/a/span

Itr Checkup Masterlist - Click Update
    Click Element  xpath=//a[2]/span

Itr Checkup Masterlist - Click Submit to Confirm
    Click Element  xpath=//div/button

Itr Checkup Masterlist - Click View Individual
    Click Element  xpath=//td[3]/a/span

Itr Checkup Masterlist - Click Delete
    Click Element  xpath=//a[3]/span

Itr Checkup Masterlist - Click Yes to Confirm
    Click Element  xpath=//input[2]

Itr Checkup Masterlist - Back
    Click Element    xpath://span[contains(.,'arrow_back')]









Itr for Widowed
    Click Element    xpath://div[4]/div/div/div/div[2]/div/p/small

Itr for Widowed - Click the Plus Sign to Add
    Click Element   xpath=//a[2]/span

Itr for Widowed - Type the First Name
    Input Text   id=id_first_name  test

Itr for Widowed - Type the Second Name
    Input Text   id=id_last_name  test

Itr for Widowed - Click Submit to Add
    Click Element  xpath=//div/button

Itr for Widowed - View Specific Form
    Click Element  xpath=//td[6]/a/span

Itr for Widowed - Click the Edit to Change
    Click Element  xpath=//a[2]/span

Itr for Widowed - Click Submit
    Click Element  xpath=//div/button

Itr for Widowed - Click Delete
    Click Element  xpath=//a[3]/span

Itr for Widowed - Click Yes to Confirm Deletion
    Click Element  xpath=//input[2]

Itr for Widowed - Back
    Click Element    xpath://span[contains(.,'arrow_back')]





Appointments
    Click Element    xpath://li[4]/a

Appointments - Click All Appointment to Load
    Click Element   xpath=//li/button

Appointments - Click Pending Appointment to Load all Pending Appointment
    Click Element   xpath=//li[2]/button

Appointments - Click Ongoing Appointment to Load all Ongoing Appointment
    Click Element   xpath=//li[3]/button

Appointments - Click Done Appointment to Load the List of Finished Appointment
    Click Element   xpath=//li[4]/button

Appointments - Click Rejected Appointment to Load the List of Rejected
    Click Element   xpath=//li[5]/button






Medicine
    Click Element    xpath://li[5]/a

Medicine - Click Add Medicine
    Input Text  xpath=//div[2]/div/div/a/span   dawdawd

Medicine - Type the Name
    Input Text  id=id_name  dawd

Medicine - Type Class of Medicine
    Input Text  id=id_type   dsadas

Medicine - Type the Description of the Medicine
    Input Text  id=id_description   dwa

Medicine - Select the Expiry Date of the Medicine
    Input Text  id=id_expiration_date  2022-11-18

Medicine - Type the Number of Stock
    Input Text  id=id_stock  12

Medicine - Submit to Add the Medicine
    Click Element  xpath=//div/button

Medicine - Click Edit
    Click Element  xpath=//a[2]/span

Medicine - Click Cancel
    Click Element  xpath=//div[7]/div/a

Medicine - Click Delete
    Click Element  xpath=//a[3]/span

Medicine - Click Yes to Confirm
    Click Element  xpath=//input[2]




Schedules
    Click Element    xpath://li[6]/a

Schedules - Click the Plus Sign to Add Schedule
    Click Element  xpath=//div[2]/div/div/a/span

Schedules - Type the First Name
    Input Text   id=id_first_name   dawd

Schedules - Type the Last Name
    Input Text   id=id_last_name   daw

Schedules - Select the Starting Time of Work
    Input Text   id=id_work_time_from   03:13

Schedules - Select the Ending Time of Work
    Input Text   id=id_work_time_to   03:13

Schedules - Click Cancel
    Click Element  xpath=//form/a




Feed
    Click Element    xpath://li[7]/a

Feed - Click the Add
    Click Element   xpath=//div[2]/div/div/a/span

Feed - Type Feed the Title
    Input Text   xpath=//div[2]/input  dawd

Feed - Type Content
    Input Text   xpath=//textarea  dwadaw

Feed - Select Image
    Input Text   xpath=//div[3]/div[2]/input  C:\downloads\postgresql[2].png

Feed - Click Submit
    Click Element   xpath=//div/button





QA
    Click Element    xpath://li[8]/a

QA - Click Message Icon
    Click Element     xpath=//i

QA - Type Message
    Input Text    id=floatingTextarea    text

QA - Click Send Icon to Show
    Click Element    xpath=//i





Archive
    Click Element    xpath://span[contains(.,'Archive')]

Archive - Click Medicine Archive
    Click Element   xpath=//div[2]/div/ul/li/a

Archive - Click Schedule Archive to Show
    Click Element   xpath=//div[2]/div/ul/li[2]/a

Archive - Click Feed Archive to Show
    Click Element   xpath=//div[2]/div/ul/li[3]/a

Archive - Click Morbidity Archive to Show
    Click Element   xpath=//a[contains(.,'Morbidity')]

Archive - Click Child Masterlist to Show
    Click Element   xpath=//div[2]/div/ul/li[5]/a

Archive - Click Visit Log Book to Show
    Click Element   xpath=//div[2]/div/ul/li[6]/a

Archive - Click Antigen Form to Show
    Click Element   xpath=//div[2]/div/ul/li[7]/a

Archive - Click Masterlist Pregnancy and Newborn to Show
    Click Element   xpath=//div[2]/div/ul/li[8]/a

Archive - Click ITR Check Up Masterlist to Show all Check ups
    Click Element   xpath=//div[2]/div/ul/li[9]/a

Archive - Click ITR for Widowed to Show
    Click Element   xpath=//li[10]/a

Archive - Click Child Masterlist to Show
    Click Element   xpath=//div[2]/div/ul/li[5]/a

Archive - Select Item to Restore
    Click Element   xpath=//input

Archive - Click Restore
    Click Element   xpath=//form/button

Archive - Click Yes to Confirm
    Click Element   xpath=//div[3]/button



