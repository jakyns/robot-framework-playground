*** Settings ***
Library         Selenium2Library
/* Suite teardown  Close all browsers */


*** Variables ***
${browser}     ff
${url_google}  http://www.google.com
${test_fb}     Facebook
${user_fb}     user
${pass_fb}     pass


*** Test Cases ***
Search Facebook from Google
  Open Google
  Search Facebook


Log in on Facebook
  Insert user and password
  Click login btn


*** Keywords ***
Open Google
  Open Browser  ${url_google}  ${browser}


Search Facebook
  Input Text  name=q  ${test_fb}
  Wait Until Element Is Visible  name=btnK
  Click Button  name=btnK
  Wait Until Page Contains  ${test_fb}
  Click Link  https://th-th.facebook.com/


Insert user and password
  Wait Until Element Is Visible  u_0_e
  Input Text  name=email  ${user_fb}
  Input Text  name=pass   ${pass_fb}


Click login btn
  Click Button  id=u_0_b
