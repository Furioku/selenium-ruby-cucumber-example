require 'selenium-webdriver'

$driver = Selenium::WebDriver.for :chrome

def open_page(url)
  $driver.get(url)
  $driver.manage.window.maximize
end

def close_cookies_pop_up
  wait_until_element_is_displayed_xpath('//span[@class = "didomi-continue-without-agreeing"]')
  $driver.find_element(:xpath, '//span[@class = "didomi-continue-without-agreeing"]').click
end




