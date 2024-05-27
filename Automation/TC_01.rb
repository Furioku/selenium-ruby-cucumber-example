require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get('https://www.lazyautomation.co.uk/lazy1.html')

driver.manage.window.maximize
driver.find_element(:css, '#textfield1').displayed?
driver.find_element(:css, '#textfield1').send_keys('Worm')
dropdown = driver.find_element(:css, '#options1')
option = Selenium::WebDriver::Support::Select.new(dropdown)
option.select_by(:value, 'c', )
#driver.find_element(:css, '#tibm').click

sleep(5)

