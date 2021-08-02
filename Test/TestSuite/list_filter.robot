*** Settings ***
Documentation       Testing List Filter
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***
TestCase1: Test List Filter
    [Documentation]  This is to test list filter
    [Tags]  list
    [Setup]
        Open List Filter Selenium Website in Chrome
        sleep  2s
        Input To Test Search
        sleep   3s
    [Teardown]  Close Browser




# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\list_filter_reports Test\TestSuite\list_filter.robot
