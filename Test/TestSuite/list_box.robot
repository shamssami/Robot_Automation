*** Settings ***
Documentation       Testing List Box Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***
TestCase1: Test List Box
    [Documentation]  This is to verify list box
    [Tags]  box
    [Setup]
        Open List Box Selenium Website in Chrome
        sleep  2s
        Pick List1
        sleep  2s
        Pick List2
        sleep   3s
    [Teardown]  Close Browser




# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\list_box Test\TestSuite\list_box.robot