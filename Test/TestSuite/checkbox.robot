*** Settings ***
Documentation       Testing MercuryTours Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: check single checkbox
    [Documentation]  This is to verify checkbox is selected/checked
    [Tags]  single
    [Setup]
        Open checkbox Selenium Website in Chrome
        sleep   5s
        Checkbox Should Not Be Selected    ${single_checkbox}
        select checkbox    ${single_checkbox}
        sleep   5s
    [Teardown]  Close Browser


TestCase2: check multiple checkboxes
    [Documentation]  This is to test checkboxes
    [Tags]  single
    [Setup]
        Open checkbox Selenium Website in Chrome
        sleep   5s
        Check if checkboxes are unchecked
        Test check_all_button
        sleep   5s
    [Teardown]  Close Browser

