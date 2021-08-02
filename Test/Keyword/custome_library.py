
class CustomeLibrary:
    ROBOT_LIBRARY_SCOPE = 'TEST_CASE'

    def current_percent(self, driver):
        # Click below button to start download.
        return self.driver.find_element(*self.locator.progress_label).is_displayed()
