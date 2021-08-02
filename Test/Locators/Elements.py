__author__ = 'Shams'

# basic-form
form_url = 'https://www.seleniumeasy.com/test/basic-first-form-demo.html'
number1_field = 'xpath://*[@id="sum1"]'
number2_field = 'xpath://*[@id="sum2"]'
total_field = 'xpath://*[@id="gettotal"]/button'

# test.robot
URL = 'https://demo.nopcommerce.com/'
link = "xpath://a[@class='ico-login']"
email_field = 'id:Email'
password_field = 'id:Password'
submit_button = 'xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button'

# checkox
checkbox_url = 'https://www.seleniumeasy.com/test/basic-checkbox-demo.html'
single_checkbox = 'xpath://*[@id="isAgeSelected"]'
checkboxes = 'xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/div/label/input'
checkbox1 = 'xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/div[1]/label/input'
checkall_button = 'xpath://*[@id="check1"]'
is_check = None

# table
table_url = 'https://www.seleniumeasy.com/test/table-search-filter-demo.html'
input_filter = 'xpath://*[@id="task-table-filter"]'
task = 'Wireframes'
assignee = 'Mike Trout'
status = 'in progress'

filter_by_number = 'xpath:/html/body/div[2]/div/div[2]/div[2]/div/table/thead/tr/th[1]/input'
filter_icon = 'xpath:/html/body/div[2]/div/div[2]/div[2]/div/div/div/button'

# Data Loading
load_data_url = 'https://www.seleniumeasy.com/test/dynamic-data-loading-demo.html'
get_user_button = 'xpath://*[@id="save"]'
#######################
# Input_form
input_form_url = 'https://www.seleniumeasy.com/test/input-form-demo.html'

first_name = 'xpath://*[@id="contact_form"]/fieldset/div[1]/div/div/input'
last_name = 'xpath://*[@id="contact_form"]/fieldset/div[2]/div/div/input'
my_email = 'xpath://*[@id="contact_form"]/fieldset/div[3]/div/div/input'
my_phone = 'xpath://*[@id="contact_form"]/fieldset/div[4]/div/div/input'
address = 'xpath://*[@id="contact_form"]/fieldset/div[5]/div/div/input'
city = 'xpath://*[@id="contact_form"]/fieldset/div[6]/div/div/input'
state = 'xpath://*[@id="contact_form"]/fieldset/div[7]/div/div/select'
zip_code = 'xpath://*[@id="contact_form"]/fieldset/div[8]/div/div/input'
website_domain_name = 'xpath://*[@id="contact_form"]/fieldset/div[9]/div/div/input'
radio_button_name = 'hosting'
description = 'xpath://*[@id="contact_form"]/fieldset/div[11]/div/div/textarea'
send_button = 'xpath://*[@id="contact_form"]/fieldset/div[13]/div/button'

###################################################################################
###########################################################################
# ListFilter
list_filter_url = 'https://www.seleniumeasy.com/test/data-list-filter-demo.html'
input_search = 'xpath://*[@id="input-search"]'

####################List Box
list_box_url = 'https://www.seleniumeasy.com/test/jquery-dual-list-box-demo.html'
list1_selections = 'xpath://*[@id="pickList"]/div/div[1]/select'
list2_selections = 'xpath://*[@id="pickList"]/div/div[3]/select'
add_button = 'xpath://*[@id="pickList"]/div/div[2]/button[1]'
removeAll_button = 'xpath://*[@id="pickList"]/div/div[2]/button[4]'
addAll_button = 'xpath://*[@id="pickList"]/div/div[2]/button[2]'
remove_button = 'xpath://*[@id="pickList"]/div/div[2]/button[3]'

##########################Table Pagination
table_pagination_url = 'https://www.seleniumeasy.com/test/table-pagination-demo.html'
rows = 'xpath://*[@id="myTable"]/tr'
page_link1 = 'xpath://*[@id="myPager"]/li[2]/a'
page_link2 = 'xpath://*[@id="myPager"]/li[3]/a'
page_link3 = 'xpath://*[@id="myPager"]/li[4]/a'
prev_link = 'xpath://*[@id="myPager"]/li[1]/a'
next_link = 'xpath://*[@id="myPager"]/li[5]/a'

##############Progress Bars
jquery_progress_url = 'https://www.seleniumeasy.com/test/jquery-download-progress-bar-demo.html'
bootstrap_progress_url = 'https://www.seleniumeasy.com/test/bootstrap-download-progress-demo.html'
download_button = 'xpath://*[@id="downloadButton"]'
progress_label = 'xpath://*[@id="dialog"]/div[1]'

circle_button = 'xpath://*[@id="cricle-btn"]'
percent_field = 'xpath://*[@id="circle"]/div/div[1]'

#########################Modals
ModalUrl = 'https://www.seleniumeasy.com/test/bootstrap-modal-demo.html'
# single modal
launch_modal_button = 'xpath:/html/body/div[2]/div/div[2]/div[1]/div/div/div[2]/a'
single_modal_title = 'xpath://*[@id="myModal0"]/div/div/div[1]/h4'
save_changes_button = 'xpath://*[@id="myModal0"]/div/div/div[4]/a[2]'

# multi modals
launch_multi_modal_button1 = 'xpath:/html/body/div[2]/div/div[2]/div[2]/div/div/div[2]/a'

launch_multi_modal_button2 = 'xpath://*[@id="myModal"]/div/div/div[3]/a'
save_changes_modal2_button = 'xpath://*[@id="myModal2"]/div/div/div[6]/a[2]'
close_modal2_button = 'xpath://*[@id="myModal2"]/div/div/div[6]/a[1]'
save_changes_modal1_button = 'xpath://*[@id="myModal"]/div/div/div[4]/a[2]'
first_modal_title = 'xpath://*[@id="myModal"]/div/div/div[1]/h4'
second_modal_title = 'xpath://*[@id="myModal2"]/div/div/div[1]/h4'

#########################Alerts
AlertsUrl = 'https://www.seleniumeasy.com/test/bootstrap-alert-messages-demo.html'
autoclosable_btn_success = 'xpath://*[@id="autoclosable-btn-success"]'
normal_btn_success = 'xpath://*[@id="normal-btn-success"]'
autoclosable_btn_warning = 'xpath://*[@id="autoclosable-btn-warning"]'
normal_btn_warning = 'xpath://*[@id="normal-btn-warning"]'
autoclosable_btn_danger = 'xpath://*[@id="autoclosable-btn-danger"]'
normal_btn_danger = 'xpath://*[@id="normal-btn-danger"]'
autoclosable_btn_info = 'xpath://*[@id="autoclosable-btn-info"]'
normal_btn_info = 'xpath://*[@id="normal-btn-info"]'

autoclosable_alert_success = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[1]'
autoclosable_alert_warning = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[3]'
autoclosable_alert_danger = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[5]'
autoclosable_alert_info = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[7]'

normal_alert_success = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[2]'
normal_alert_warning = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[4]'
normal_alert_danger = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[6]'
normal_alert_info = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div[8]'

close_buttons_group = 'xpath:/html/body/div[2]/div/div[2]/div/div[2]/div/button'
