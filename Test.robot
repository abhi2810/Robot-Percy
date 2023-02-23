*** Settings ***
Library         SeleniumLibrary
Library         ./Libraries/library.py
Test Setup      Start Session
Test Teardown   Close Session

*** Variables ***
${baseUrl}          https://www.google.com/
@{resolutions}      768     992     1200

*** Test Cases ***
Capture Percy
    Wait Until Element is Visible       name=q
    Take Snapshot       Google Snapshot     ${resolutions}

*** Keywords ***
Start Session
    Open Browser    ${baseUrl}      firefox

Close Session
    Close Browser
