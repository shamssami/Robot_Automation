*** Settings ***
Documentation       Testing MercuryTours Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***
TestCase1: Calculate Valid Inputs
    [Documentation]  This is to verify invalid login Mercury Tours Home Page
    [Tags]  valid-sum
    [Setup]
        Open basic-form Selenium Website in Chrome
        Input valid inputs to calculte
    [Teardown]  Close Browser

TestCase2: Calculate InValid Inputs
    [Documentation]  This is to verify invalid login Mercury Tours Home Page
    [Tags]  invalid-sum
    [Setup]
        Open basic-form Selenium Website in Chrome
        Input invalid inputs to calculte
    [Teardown]  Close Browser

# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\basic_form Test\TestSuite\basic_form.robot