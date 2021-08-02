*** Settings ***
Documentation       Testing Selenium Website Keywords
Library             Selenium2Library
Library             BuiltIn
Variables           ../Variable/variables.py
Variables           ../Locators/Elements.py
*** Keywords ***
# common keyword

Open basic-form Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${form_url}  browser=${BROWSER}
    Maximize Browser Window

Open Table Pagination Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${TablePaginationUrl}  browser=${BROWSER}
    Maximize Browser Window


Open loading_data Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${load_data_url}  browser=${BROWSER}
    Maximize Browser Window


Open checkbox Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${checkbox_url}  browser=${BROWSER}
    Maximize Browser Window

#Tabel
Open Table Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${table_url}  browser=${BROWSER}
    Maximize Browser Window

#input_form
Open Input Form Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${input_form_url}  browser=${BROWSER}
    Maximize Browser Window

# ListFilter
Open List Filter Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${List}  browser=${BROWSER}
    Maximize Browser Window

##############ListBox
Open List Box Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${list_box_url}  browser=${BROWSER}
    Maximize Browser Window

##############Jquery Brogress Bars
Open Jquery Progress Url Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${jquery_progress_url}  browser=${BROWSER}
    Maximize Browser Window

##############Bootstrapp Progress Bars
Open Bootstrap Progress Bar Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${bootstrap_progress_url}  browser=${BROWSER}
    Maximize Browser Window

##############Modals
Open Modals Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${ModalUrl}  browser=${BROWSER}
    Maximize Browser Window


##############Alerts
Open Alerts Selenium Website in Chrome
    Log  Open the URL in Browser
    Open browser  ${AlertsUrl}  browser=${BROWSER}
    Maximize Browser Window


#basic-form keywords
Input valid inputs to calculte
    input text     ${number1_field}        ${valid_number1}
    input text     ${number2_field}        ${valid_number2}
    click element   ${total_field}
    sleep   2s

Input invalid inputs to calculte
    input text     ${number1_field}        ${valid_number1}
    input text     ${number2_field}        ${invalid_number}
    click element   ${total_field}
    sleep   4s
########################################

#checkbox
#Check Single Checkbox
#    #is_checked
#    ${isCheck} =    Run Keyword And Return Status    Checkbox Should Be Selected   ${single_checkbox}
#    Run Keyword If    ${isCheck}    My Cool Keyword


Check if checkboxes are unchecked
    sleep  3s
    ${items}          Get Webelements      ${checkboxes}
    FOR    ${item}    IN    @{items}
        Checkbox Should Not Be Selected    ${item}
    END

Test check_all_button
    # click on check_all_button
    click element  ${checkall_button}
    ${button_attribute1}   Get Element Attribute  ${checkall_button}    attribute=value
    sleep  3s
    click element  ${checkbox1}
    sleep  4s
    ${button_attribute2}  Get Element Attribute  ${checkall_button}   attribute=value


#####################################################################
Filter Data By Fields
    [Documentation]  Type in your search to filter data by Tasks / Assignee / Status
    Input text  ${input_filter}    ${task}
    sleep   2s
    Clear Element Text   ${input_filter}
    Input text  ${input_filter}    ${assignee}
    sleep  2s
    Clear Element Text     ${input_filter}
    Input text  ${input_filter}    ${status}

Activate Fields
    Element Should Be Disabled  ${filter_by_number}
    Click Element  ${filter_icon}
    Element Should Be Enabled  ${filter_by_number}

Test Data Loading
    click element  ${get_user_button}
    sleep  2s
    click element  ${get_user_button}
    sleep  2s
    click element  ${get_user_button}
###############

# Input Form
Input Info In the Form
    # type info in the form
    Input text       ${first_name}       ${f_name}
    Input Text      ${last_name}        ${l_name}
    Input Text      ${my_email}           ${text_email}
    Input Text      ${my_phone}           ${my_no}
    Input Text      ${address}         ${address_value}
    Input Text      ${city}            ${city_value}
    Select from list by index       ${state}         2
    Input Text      ${zip_code}        ${zip_code_value}
    Input Text      ${website_domain_name}       ${domain_name_value}
    Radio Button Should Not Be Selected      ${radio_button_name}
    Select Radio Button      ${radio_button_name}   ${radio_button_value}
    Input Text      ${description}       ${description_value}
    Click Element   ${send_button}


#List F
Input To Test Search
    Input text  ${input_search}   ${filter_by_title}
    sleep  2s
    Clear Element Text     ${input_search}

    Input text  ${input_search}   ${filter_by_email}
    sleep  2s
    Clear Element Text     ${input_search}

    Input text  ${input_search}   ${filter_by_phone_no}
    sleep  2s
    Clear Element Text     ${input_search}

    Input text  ${input_search}   ${filter_by_name}
    sleep  2s
    Clear Element Text     ${input_search}

    Input text  ${input_search}   ${filter_by_notExist_data}
    sleep  2s
    Clear Element Text     ${input_search}



#List Box
Pick List1
     #select an element
     Select from list by index       ${list1_selections}         2
     click element  ${add_button}
    # add multi elements to oter list
     Select from list by index       ${list1_selections}         3
     Select from list by index       ${list1_selections}         4
     Select from list by index       ${list1_selections}         5
     click element  ${add_button}
     sleep  2s
     click element  ${remove_all_button}
     click element  ${add_all_button}

Pick List2
     # click add all button
     click element  ${add_all_button}
     Select from list by index       ${list2_selections}         2
     # remove the selected element
     click element  ${remove_button}

     # select multi elements
     Select from list by index       ${list2_selections}         1
     Select from list by index       ${list2_selections}         2
     Select from list by index       ${list2_selections}         3
     sleep  2s
     click element  ${remove_button}
     sleep  2s


# Jquery Progress Bar
Test Jquery Progress Bar
    click element   ${download_button}
    sleep  5s
    Element Should Be visible  ${progress_label}

# Bootstrap Progress Bar
Test Bootstrap Progress Bar
    click element   ${circle_button}
    sleep  5s
    Element Should Be visible  ${percent_field}


Launch Single Modal
    Element should be enabled  ${launch_modal_button}
    Click element  ${launch_modal_button}
    sleep   2s
    Element should be enabled  ${save_changes_button}
    Click element  ${save_changes_button}

Launch Multiple Modals Case1
    Element should be enabled  ${launch_multi_modal_button1}
    Click element  ${launch_multi_modal_button1}
    sleep   2s
    Element should be enabled  ${launch_multi_modal_button2}
    Click element  ${launch_multi_modal_button2}
    sleep  2s
    Element should be enabled  ${save_changes_modal2_button}
    Click element  ${save_changes_modal2_button}

Launch Multiple Modals Case2
    Element should be enabled  ${launch_multi_modal_button1}
    Click element  ${launch_multi_modal_button1}
    sleep   2s
    Element should be enabled  ${launch_multi_modal_button2}
    Click element  ${launch_multi_modal_button2}
    sleep  2s
    Element should be enabled  ${close_modal2_button}
    Click element  ${close_modal2_button}
    sleep  2s
    Element should be enabled  ${save_changes_modal1_button}
    Click element  ${save_changes_modal1_button}


Click Autoclosable Alerts
    click element  ${autoclosable_btn_success}
    click element  ${autoclosable_btn_warning}
    click element  ${autoclosable_btn_danger}
    click element  ${autoclosable_btn_info}

# check if autoclosable buttons are displayed
Check autoclosable buttons are displayed
    Element should be visible  ${autoclosable_btn_success}
    Element should be visible  ${autoclosable_btn_warning}
    Element should be visible  ${autoclosable_btn_danger}
    Element should be visible  ${autoclosable_btn_info}

Click Normal Alerts
    click element  ${normal_btn_success}
    click element  ${normal_btn_warning}
    click element  ${normal_btn_danger}
    click element  ${normal_btn_info}

Click Close Normal Alerts
    click element  ${normal_alert_success}
    click element  ${normal_alert_warning}
    click element  ${normal_alert_danger}
    click element  ${normal_alert_info}
