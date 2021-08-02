*** Settings ***
Documentation       Testing Input Form Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***
TestCase1: Test Form Inputs
    [Documentation]  This is to verify form inputs
    [Tags]  form
    [Setup]
        Open Input Form Selenium Website in Chrome
        sleep  2s
        Input Info In the Form
        sleep   3s
    [Teardown]  Close Browser




# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\input_form Test\TestSuite\input_form.robot