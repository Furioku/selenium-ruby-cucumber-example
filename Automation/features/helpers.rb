require 'selenium-webdriver'

def is_displayed_css(css_selector)
  $driver.find_element(:css, css_selector).displayed?
end

def click_css(css_selector)
  $driver.find_element(:css, css_selector).click
end

def click_xpath(xpath)
  $driver.find_element(:xpath, xpath).click
end

def send_keys_css(css_selector, keys)
  $driver.find_element(:css, css_selector).send_keys(keys)
end

def wait_until_element_is_displayed_css(css_selector)
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until { $driver.find_element(:css, css_selector).displayed? }
end

def wait_until_element_is_displayed_xpath(xpath)
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until { $driver.find_element(:xpath, xpath).displayed? }
end