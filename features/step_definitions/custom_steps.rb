require "selenium-cucumber"

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Given("I go to page") do
  navigate_to "https://ip.cn/index.php"
end

Given("I enter ip {string}") do |ip_address|
  ip_text_area_xpath = "//*[@name='ip']"
  wait_for_element_to_display(:xpath, ip_text_area_xpath, 10)
  enter_text(:xpath, ip_address, ip_text_area_xpath)
end

When("I press search") do
  search_btn_xpath = "//*[@id='s']"
  wait_for_element_to_display(:xpath, search_btn_xpath, 10)
  click(:xpath, search_btn_xpath)
end

Then("I see IP Location") do
  ip_location_text_xpath = "(//code)[last()]"
  wait_for_element_to_display(:xpath, ip_location_text_xpath, 10)
  sleep 5
end
