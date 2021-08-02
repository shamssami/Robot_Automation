
*** Settings ***
Documentation       Testing Modals Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: Test Single Modal
    [Documentation]  This is to test mdoals
    [Tags]  modal
    [Setup]
        Open Modals Selenium Website in Chrome
        sleep   3s
        Launch Single Modal
        sleep   2s
    [Teardown]  Close Browser


TestCase2: Test Multiple Modals Case1
    [Documentation]  This is to test mdoals
    [Tags]  modal
    [Setup]
        Open Modals Selenium Website in Chrome
        sleep   3s
        Launch Multiple Modals Case1
        sleep   2s
    [Teardown]  Close Browser

TestCase3: Test Multiple Modals case2
    [Documentation]  This is to test mdoals
    [Tags]  modal
    [Setup]
        Open Modals Selenium Website in Chrome
        sleep   3s
        Launch Multiple Modals Case2
        sleep   2s
    [Teardown]  Close Browser

# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\modals Test\TestSuite\modals.robot