*** Settings ***
Documentation       Testing Table Website
Library             Selenium2Library
Library             BuiltIn
Resource            ../Keyword/Keywords.robot
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py


*** Test Cases ***

TestCase1: Test Table Data By Tasks
    [Documentation]  This is to test filter data fearure in the table
    [Tags]  table_data
    [Setup]
        Open Table Selenium Website in Chrome
        sleep   3s
        Filter Data By Fields
        sleep   2s
    [Teardown]  Close Browser


TestCase2: Test columns filter activation
    [Documentation]  This is to test filter data fearure in the table
    [Tags]  icon
    [Setup]
        Open Table Selenium Website in Chrome
        sleep   3s
        Activate Fields
        sleep   2s
    [Teardown]  Close Browser

