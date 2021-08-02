*** Settings ***
Documentation       Testing Loading Data
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: Test Data Loading Button
    [Documentation]  This is to test button to load data
    [Tags]  load
    [Setup]
        Open loading_data Selenium Website in Chrome
        sleep   3s
        Test Data Loading
        sleep   2s
    [Teardown]  Close Browser


