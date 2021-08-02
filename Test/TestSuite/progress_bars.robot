*** Settings ***
Documentation       Testing Progress Bars
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: Test Jquery Progress Bar
    [Documentation]  This is to test Jquery Progress Bar
    [Tags]  Jprogress
    [Setup]
        Open Jquery Progress Url Selenium Website in Chrome
        sleep   3s
        Test Jquery Progress Bar
        sleep   2s
    [Teardown]  Close Browser


TestCase2: Test Bootstrap Progress Bar
    [Documentation]  This is to test Bootstrap Progress Bar
    [Tags]  Bprogress
    [Setup]
        Open Bootstrap Progress Bar Selenium Website in Chrome
        sleep   3s
        Test Bootstrap Progress Bar
        sleep   2s
    [Teardown]  Close Browser

# robot --outputdir C:\Users\Microsoft\PycharmProjects\RobotAutomationTesting\Reports\progress_bars Test\TestSuite\progress_bars.robot