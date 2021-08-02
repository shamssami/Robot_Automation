*** Settings ***
Documentation       Testing Alerts Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: Test Autoclosable Alerts
    [Documentation]  This is to verify autoclosable alerts
    [Tags]  auto
    [Setup]
        Open Alerts Selenium Website in Chrome
        sleep   5s
        Click Autoclosable Alerts
        Check autoclosable buttons are displayed
        sleep   5s
    [Teardown]  Close Browser

TestCase2: Test Normal Alerts
    [Documentation]  This is to verify normal alerts
    [Tags]  normal
    [Setup]
        Open Alerts Selenium Website in Chrome
        sleep   5s
        Click Normal Alerts
        Click Close Normal Alerts
        sleep   5s
    [Teardown]  Close Browser

# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\alerts Test\TestSuite\alerts.robot